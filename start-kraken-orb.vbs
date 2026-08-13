Option Explicit

Dim shell, root, pythonw, command, quote
Set shell = CreateObject("WScript.Shell")

root = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
pythonw = shell.ExpandEnvironmentStrings("%USERPROFILE%") & "\AppData\Roaming\uv\python\cpython-3.11-windows-x86_64-none\python.exe"

If Not CreateObject("Scripting.FileSystemObject").FileExists(pythonw) Then
    pythonw = "python.exe"
End If

quote = Chr(34)
command = quote & pythonw & quote & " -m http.server 47821 --bind 127.0.0.1 --directory " & quote & root & quote
shell.CurrentDirectory = root
shell.Run command, 0, False
