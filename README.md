# Daily
A Daily todo, meetings, notes, journal and research in one handy package

Working professionally, there is no one way of creating documents for on a daily basis, some people use One Note, others use One Drive, some use Word. This is probably because I work for a Microsoft focussed employer.

Being an open source advocate, I really love the idea od using free / open source tools to accomplish what I want to do and not be locked into a single mechanism. I want the freedom to move about from one thing to anoter.

I tried looking for a single solution which addresses this, but there is none, which address all my wants.

## Requirements
- **Open source** - no vendor lock in.
- **Platform independent** - I use Windows at work, Linux at home.
- **Tool Independnet** - Use a variety of tools to accomplish this.
- **Synchronisation** - Across multiple platforms (Android, Apple, Windows, Mac, Linux).
- **Publishable** - Publish certain items (such as Research items)
  
The only format I could come up with was plain old Markdown, which allows me create formatted text that is readable by many different formats. It also allows me to publish the content in HTML.

## Process
As there is no single application which can accomplish this, I could create one but with restrictions at work on running applications which are not approved, I should start small and work on it.
The result is a set of scripts (Bash, Powershell) which can be used to create simple notes. journal entries, meeting notes, etc.

## Items to record
The daily items I need to record are:
- **Journal** - I enjoy recording what I have achieved in the day, it allows me to reflect on what I have achieved and make the next day better.
- **Meetings** - I spend a lot of times in meetings and need to record what happens, I also want this to be easily sendable in HTML format.
- **Research** - I sometimes do some reasearch into things, and I want to record the outcomes.
-  **Notes** - I sometimes need to take ad-hoc notes on specific items.
- **Todo** - I always have lots on my plate to accomplish and cannot possibly keep them in my head, so need a mechanism to record them and cross them off when completed.

## Tools
[**pandoc**](https://pandoc.org/) is able to convert from MD to any other format

[**VSCode**](https://code.visualstudio.com/) is a universal editor, with plugins it makes this a powerfult editor

[notify-send](https://manpages.org/notify-send) display popups in linux & [notify-send](https://vaskovsky.net/notify-send/) displays popups in Windows
