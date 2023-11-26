import subprocess
import sys

filename = sys.argv[1]  + "_edit.mp3"
#filename =  filename + "_edit.mp3"
l=sys.argv[2]

model_name = "medium" ##other models: large, small
subprocess.run(
  [
    "whisper",
    "--language", l,
    "--word_timestamps", "True",
    "--model", "medium",
    "--output_dir", f"output-{model_name}",
    filename
  ]
)
