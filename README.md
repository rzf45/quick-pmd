# quick-pmd
A program to quickly compile PC-98 .MML file using PMDDotNet and play it on FMPlayer or FMPMD2000. With necessary programs included you don't need to setup any DOS shenanigans.

## Installation
1. Clone this repo or [download it here](https://github.com/rzf45/quick-pmd/archive/refs/heads/main.zip).
2. Extract the files anywhere you want.

## How to use
1. Place your .mml file inside `MML` folder
2. Open command prompt on the folder where the `mml.bat` is.
3. Type `mml YOUR_MML_FILENAME` without the extension.

    Example using `MIKE.MML` included in the MML folder:
    ```
    mml MIKE
    ```

### Additional Usage
- You can pass `-p2` to the argument to play it with FMPMD2000
    
## How do I code the MML?
- [Youtube Playlist of mrnuage's PMD MML Tutorial](https://www.youtube.com/playlist?list=PLjDRNwIwhN8cgC0kppyueT_mplN-Wxc-r)
- [Noyemi K.'s PMD Guide](https://web.archive.org/web/20211121010954/https://delmunsoft.com/PMD%20Programming.html)
- [Translated `PMDMML.MAN` by Blaze and Pigu (if you have learned enough from guides/tutorials above)](https://pigu-a.github.io/pmddocs/pmdmml.htm)

#### More information about PMD
- [https://battleofthebits.org/lyceum/View/Professional+Music+Driver+%28PMD%29](https://battleofthebits.org/lyceum/View/Professional+Music+Driver+%28PMD%29/)

## Credit
- [PMDDotNET](https://github.com/kuma4649/PMDDotNET) by [github/kuma4649](https://github.com/kuma4649)
- [98FMPlayer](https://github.com/myon98/98fmplayer) by [github/myon98](https://github.com/myon98)
- FMPMD2000 [http://c60.la.coocan.jp/fmpmd.html](http://c60.la.coocan.jp/fmpmd.html)
