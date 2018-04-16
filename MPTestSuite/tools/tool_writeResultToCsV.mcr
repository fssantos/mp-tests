RUN CSHARP : using System;{#crlf#}using System.IO;{#crlf#}using System.Diagnostics;{#crlf#}public class Program{#crlf#}{{#crlf#}	public static void Main(){#crlf#}	{{#crlf#}                     writeToCsv(getClipboardText());{#crlf#}{#crlf#}	}{#crlf#}{#crlf#}{#crlf#}                public static void writeToCsv (String clipboardText){#crlf#}                {{#crlf#}                     String path = System.Environment.CurrentDirectory + "/../reports" + "/Tests_Report" + ".txt";{#crlf#}  {#crlf#}                      if (!File.Exists (path)) {{#crlf#}{#crlf#}{#crlf#}                     // This text is always added, making the file longer over time{#crlf#}                     // if it is not deleted.{#crlf#}                     File.AppendAllText (path, "Report file created sucessfully!"+ Environment.NewLine + Environment.NewLine);  {#crlf#}{#crlf#}                     File.AppendAllText (path, "This log file contains all tests results running on MultiPresença!"+ Environment.NewLine + Environment.NewLine);     {#crlf#}{#crlf#}                      }{#crlf#}                      {#crlf#}{#crlf#}                     // This text is always added, making the file longer over time{#crlf#}                     // if it is not deleted.{#crlf#}                     File.AppendAllText (path, Environment.NewLine);{#crlf#}                     File.AppendAllText (path, clipboardText + ";" + getRamUsage() + ";"  + System.DateTime.Now.ToString("dd/MM/yyyy;HH:mm:ss"));     {#crlf#}                    {#crlf#}                 }{#crlf#}{#crlf#}{#crlf#}{#crlf#}               public static String getClipboardText(){#crlf#}               {{#crlf#}                     String clipboardText = System.Windows.Forms.Clipboard.GetText();{#crlf#}                     return clipboardText;{#crlf#}                    {#crlf#}               }{#crlf#}{#crlf#}               public static String getRamUsage(){#crlf#}               {{#crlf#}                    double f = 1024.0*1024.0;{#crlf#}                    double  allocationInMB = 0.0;{#crlf#}{#crlf#}                    Process[] processlist= Process.GetProcessesByName("Multipresenca");{#crlf#}{#crlf#}                     foreach (Process theprocess in processlist) {{#crlf#}{#crlf#}                     var ramUsage = theprocess.PrivateMemorySize64;{#crlf#}{#crlf#}                     allocationInMB = ramUsage / (f);                    {#crlf#}                     }{#crlf#}{#crlf#}                     return allocationInMB.ToString("#.##") + "MB";{#crlf#}               }{#crlf#}}
