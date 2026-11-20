# Aleedin Studio manual for VS Code

[Manual Bahasa Melayu](VSIX_MANUAL_MS.md)

## Install and open

1. In VS Code, press **Ctrl+Shift+P** and choose **Extensions: Install from VSIX…**.
2. Select `aleedin-studio-0.3.41.vsix` (or the newest version in the `VSCode_Plugin` folder). Reload VS Code if prompted.
3. Open a project folder you trust, then run **Buka Aleedin Chat** from the Command Palette. The Aleedin panel appears in the secondary sidebar. The localhost backend starts when the panel connects.

## Choose a language and open the manual

- Run **Aleedin Studio: Pilih Bahasa / Select Language** and choose **Bahasa Melayu** or **English**. You can also use **Settings → Aleedin Studio: Language** or type `/language` in chat.
- On the extension page, **Details** explains how to choose a language, and **Features** lists the available setting.
- Run **Aleedin Studio: Manual Pengguna / User Manual** to choose and open either guide in VS Code.

## Connect an AI service

1. Open **AI Models & MCP → AI Services**.
2. For OpenAI, Anthropic, or Gemini, add the provider and save its API key. For Ollama or LM Studio, start the local service and download a model first.
3. Select the service and model in chat. Refresh the model list if it has not appeared yet.
4. For subscription accounts, choose **Sign in** and follow the provider’s CLI sign-in flow. Model availability depends on your account and the selected service.

## Attach files and open locations

- Use the attachment button to select highlighted code, the active file, another tab, or a file from disk. You can also right-click in the editor or Explorer and choose the relevant Aleedin command.
- Click a file path on an attachment, a Codex change, or an MCP tool result that includes a file location. A path such as `src/app.js:12:3` opens at line 12, column 3. Relative paths resolve from the first workspace folder.
- If the editor cannot open a binary file such as an `.exe` or `.dll`, Aleedin asks Windows File Explorer to open the containing folder and select the file. Expand a tool step to see any detected file links.

## Connect and test MCP

1. Open **AI Models & MCP → MCP Servers**.
2. The easiest way is to choose a **Free MCP preset**, select **Fill form**, then review the form. For your own server:
   - **stdio**: enter the command and arguments, one argument per line;
   - **HTTP**: enter the URL.
3. If the server needs a key, fill in **Environment variables** as `KEY=VALUE` or **HTTP headers** as `Name: value`, one per line. Both are stored encrypted.
4. Save the MCP server and select **Test**. A successful connection lists the available tools.
5. In chat, turn on **⚒ MCP**. Each tool call asks **Allow / Deny** unless **Auto-approve** is ticked.

Example header for a server that expects a Bearer token:

```text
Authorization: Bearer YOUR_API_KEY
```

## MCP tools in the VSIX

### Built in (ready to use, nothing to install)

| MCP preset | What it does |
|---|---|
| **Lukisan Teknikal (ISO/IEC)** | Mechanical part drawings and electrical schematics on a standard sheet, shown as an image in chat. Save as `.svg` or `.dxf` (AutoCAD). |
| **PLC Ladder Logic** | IEC 61131-3 ladder diagrams with matching Structured Text. Save as `.svg` + `.st`. |
| **JavaScript** | Checks JavaScript syntax without running the code. |
| **PHP & Apache** | PHP syntax check, PHP info, Composer package search and Apache status. Needs the PHP CLI on PATH. |
| **Blockchain (Ethereum)** | Latest block number, ETH balance and recent transactions. |
| **Figma** | Reads files, exports frames as images and handles comments. Needs the `FIGMA_TOKEN` env. |

**Office** and **PowerShell & Command** are available only in the Windows desktop app.

### Technical Drawing (ISO/IEC)

`draw_technical_drawing` supports:
- **Sheets and title block:** A4–A1 with frame, grid reference and title block (ISO 5457, ISO 7200).
- **Projection:** first angle (default) or third angle, with its symbol. Front, top and side views line up automatically.
- **Lines and dimensions:** ISO 128 line types, linear/⌀/R dimensions with tolerances (ISO 129), and a standard scale chosen automatically (ISO 5455).
- **Sections and notes:** section hatching, view labels (for example SECTION A-A) and notes.
- **GD&T** (ISO 1101): 14 symbols, ⌀ zones, Ⓜ/Ⓛ and datums A/B/C.
- **Datum symbols** (ISO 5459).
- **Surface texture** (ISO 1302): for example `Ra 3.2`, with material removal required or prohibited.
- **Weld symbols** (ISO 2553): fillet, butt V/square/bevel, plug, spot and seam, with size, length, all-around, field weld and process number.
- **Isometric view** (ISO 5456-3): 3D blocks, cylinders and holes, with hidden faces removed.

`draw_electrical_schematic` draws schematics with IEC 60617 symbols:
- **Components:** resistor, capacitor, inductor, diode, zener, LED, NPN/PNP, op-amp, supply, ground, battery, sources, switches, push button, fuse, lamp, motor, relay coil and terminal.
- **Wires:** connected by pin (`R1.2`, `Q1.B`), with junction dots added automatically.

Example prompts:

- *"Draw a 120×80×12 mm flange plate with a ⌀30 H7 centre bore and four ⌀10 holes 15 mm from the edges. Three first-angle views, A3, material S275JR."*
- *"Draw a welded L-bracket with an a5 fillet on both sides, perpendicularity 0.1 to datum A, Ra 3.2 finish and an isometric view. Save as C:\Drawings\bracket.dxf."*
- *"Draw an LED driver schematic: +12V, 1k resistor, red LED, BC547 transistor with a 10k base resistor from a PWM input."*

Good to know:
- The scale is chosen automatically to fit, so a small part may be enlarged (for example 5:1). Give the scale in your prompt if you want a specific one, for example "scale 1:1".
- Click the image in chat to zoom.

### PLC Ladder Logic

- **Elements:** NO/NC contacts, P/N edge contacts, coil, negated coil, set/reset, TON/TOF/TP timers, CTU/CTD counters and parallel (OR) branches.
- **Tags:** names (`Start_PB`) or addresses (`%IX0.0`, `I0.0`).
- **Limit:** the tool only draws and generates code. It does not connect to or download anything to a PLC.

Example: *"Draw a motor start/stop ladder with seal-in, an NC stop button and overload. Turn on a lamp 5 seconds after the motor starts."*

### Third-party MCP presets (off by default)

When you choose one, the env box is filled with the key names it needs, and a message explains where to get them.

| Group | MCP preset | Requirements |
|---|---|---|
| Marketing & SEO | Apify, Firecrawl, Brave Search, Google Search Console, DataForSEO | Node.js (`npx`) and each service's API key |
| Marketing & SEO | Google Analytics (GA4) | Python 3.10+, `pipx`, Google credentials JSON file |
| Engineering | KiCad (Skematik & PCB) | KiCad 9+ and `uv` |
| Engineering | FreeCAD (Part Mekanikal & CAD) | FreeCAD + MCP addon and `uv` |
| Engineering | draw.io (Diagram & Simbol) | Node.js (`npx`) |
| Engineering | SPICE Simulasi Litar (ngspice) | Python, `uv` and ngspice on PATH |
| Engineering | PCB Parts (JLCPCB, Mouser, DigiKey) | Internet only (HTTP server) |
| General | Sequential Thinking, Memory, Filesystem, Fetch, Time | Node.js (`npx`) or `uvx` |

## Troubleshooting

| Problem | What to do |
|---|---|
| Backend disconnected | Select **Reconnect** in the panel and check the localhost status. |
| Local models are missing | Start the local service, confirm a model is downloaded, and refresh the model list. |
| MCP returns `401` | Check the API key, header name, URL, and authentication format. Save and test again. |
| File cannot be found | Check the tool’s path and confirm the file still exists in the workspace or at the displayed absolute location. |
| New commands are missing | Check the extension version and run **Developer: Reload Window**. |
| New MCP presets are missing | An older backend is still running. Close VS Code and the desktop app, run `Stop_Backend.cmd` in the desktop folder, then reopen. |
| An `npx` / `uvx` MCP fails to start | Install Node.js or uv and make sure `npx` / `uvx` is on PATH. Restart VS Code after installing. |
| Drawing "does not fit on the sheet" | Use a smaller scale (for example 1:2) or a larger sheet (A2). |

For **Data Visualization**, open the Aleedin Studio Windows desktop build and use the button in its top bar.
