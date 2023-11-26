# transcription-video

Transcription of videos, including YouTube videos, with Whisper (OpenAI), based on [this tutorial](https://colab.research.google.com/drive/18DOphWmaXtF9Xz591WQ6_Llyekb6k8I3?usp=sharing&s=03).

This repository contains two different scripts:

* `translit_youtube` allows you to transcript videos from youtube by just providing the link and the language.
* `translit_mp4' allows you to transcript your videos in mp4.


## INSTALL

Install ffmpeg,  yt-dlp, and Whisper:

```
pip install yt-dlp openai-whisper==20231106 openai
sudo apt install -y ffmpeg
```

## How to use

* 1. Transcription of a Youtube video: you have to specify the link and the language (en, pt, es, ...):

```
sh transcrip_youtube.sh <link_youtube> <language>
```

For instance:

```
sh transcrip_youtube.sh https://www.youtube.com/watch?v=AJhkLwMvgrg pt
```

2.
```
sh transcrip_mp4.sh <your_file.mp4> <language>
```


