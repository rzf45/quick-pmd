```
==============================================================================
                FMP & PMD Music Player FMPMD2000 Ver.0.31
                        Copyright & Programmed by C60
                                                        (Translater: Hally)
==============================================================================


------------------------------------------------------------------------------
= Beginning

    This program is a music player for Windows. It allows you to listen to
    music datas for "FMP" and "PMD". They're FM synthesis sound drivers for
    PC9801 series. Note that this cannot play any files without WinFMP.dll 
    (Ver 0.03 after - under 1.00) and PMDWin.dll (Ver 0.17 after - under
    1.00). Please get them separately.



------------------------------------------------------------------------------
= Install/Uninstall

    a) Install
       Extract FMPMD.exe, and copy WinFMP.dll and PMDwin.dll to
       c:\windows\system (case of Windows 9x) or c:\winnt\system32 (case of 
       Windows 2000) or the same directory as the player.

       To play the rhythm sound module of YM-2608, put the following wave
       files (44100Hz, 16bit monaural. Only PCM format is allowed) to the
       directory specifyed by "Wave directory for rhythm module" at the menu of
       Environment Setting.

            2608_BD.WAV         ;Bass Drum
            2608_SD.WAV         ;Snare Drum
            2608_HH.WAV         ;Hi-Hat
            2608_TOP.WAV        ;Cymbal
            2608_TOM.WAV        ;Tom
            2608_RIM.WAV        ;Rim Shot

       FMPMD supports the following fonts.
       Install them at Control Panel, the same procedure as usual fonts.
       The following special letters are available by installing.

        - FMPGaiji.ttf		FMP external characters
                                       ($8b9f�`$8bd6, $8bd7�`$8bfc,
                                	$8c40�`$8c7e, $8c80�`$8c9e)
        - 98Graphics.ttf	PC-9801 graphic characters
        			       ($80�`$9f, $e0�`$fc)
        - 98Line.ttf		PC-9801 chartist characters
        			       ($86a2�`$86ed)

    b) Uninstall
       Delete this player, FMPMD.ini, PlayList.m3u from Explorer or something.
       Also delete WinFMP.dll, PMDWin.dll, wave files for the rhythm module,
       fonts if you don't need.



------------------------------------------------------------------------------
= Environment Setting

    You can open the menu of Environment Setting from "Environmet setting (E)"
    on the "File (F)" menu.

    * First of all set the directory for PPC/PVI/PZI/PPS/P86, and wave
      directory for rhythm module.

    # "Sound (1)" tab

      - Device
         Specify the sound device.
         Usually "Wave Mapper" doesn't cause problems.

      - Buffer
         Specify buffer size for playing.
         It takes 16 times of specified value.
         Large buffer size prevents intermittent play, but play response or
         part masking becomes slow.

      - Output frequency
         Specify the output frequency of the wave device or the synthesis
         frequency of FM module. If "Synthesize FM in 55kHz" isn't checked,
         the synthesis frequency of FM module becomes the same value of output
         frequency. If it's checked, the synthesis frequency of FM module
         becomes 55kHz and output frequency becomes specified value.
         Higher frequency brings better sound, but CPU load becomes heavyer.

      - PPZ8 running frequency
         Specify the running frequency for PPZ8.
         Higher frequency brings better quality of sound at PPZ8 part.

      - First interpolation
         Specify if it uses first complement for each PPS/P86/PPZ8 part. 
         First complement decreases noises, but CPU load becomes heavyer.

    # "Sound (2)" tab

      - Fadeout time
         Specify fadeout time in case the fadeout button is pushed or the song
         repeats specified times.

      - Auto fadeout and stop for each song
         Check this to fadeout and stop automatically when the song repeats
         the following "Loop count" times.

      - Loop count
         Specify the loop count for the continuous play or the above Auto
         Fadeout And Stop.

      - Compressor
         Specify if it compresses the output sound.
         Compressing increases the volume, but it may a bit change the quality
         of sound.

      - OPNA wait (nsec)
         Specify wait for outputting FM/SSG/Rhythm/ADPCM datas to each
         register. Usually you don't have to change it.

    # "Directory" tab

      - Wave directory for rhythm module
         Specify the directory including wave files (2608_BD.WAV, 2608_SD.WAV,
         2608_HH.WAV, 2608_TOP.WAV, 2608_TOM.WAV and 2608_RIM.WAV�jfor rhythm
         module.

      - PCM directory
         Specify the reference directory for PPC/PVI/PZI/PPS/P86 and so on.
         You can specify it from more than two up to 64, and network drives
         are also allowed.
         The directory which contains the song data is certainly referred, so
         you don't have to specify it here.

      - Playing without PCM data by force
         Play by force even if PPC/PVI/PZI/PPS/P86 etc. are not found.
         The parts of PPC/PVI/PZI/P86 are not played without PCM. The part of
         PPS is played with internal SSG drums of PMD.

    # "Others" tab

      - Display parameters in 50 frames/sec (minimum requirement: PentiumPro)
         Display the parameter viewer in 50 frames per second. The work
         becomes quite heavy even if parameters aren't displayed.
         It works in 20 frames/sec without checking.

      - Sync control
         Adjust if the timing between sound output and parameter display don't
         accord. Turn right to delay the timing of parameter display.
         (Adjustable up to �}1 second)

      - Check playtime
         Check the playtime of the song and reflect it to the slider before
         start playing.
         Take off this check if you don't want a long wait.

      - Snap window
         The window size and positions are snapped in specified dot unit.

      - Show icon in tasktray
         Check it to show icon to tasktray.

      - Spectrum analyzer
         Specify the number of bands for the spectrum analyzer.
                Low    :  8 band
                Middle : 16 band
                High   : 32 band
                Sper   : 64 band
         More bands make processing heavyer.

      - Use humming window
         Check it to use Humming Window for the spectrum analyzer processing.
         Resolution of the spectrum analyzer is improved but becomes heavy by
         this check.



------------------------------------------------------------------------------
= Menu Operation

    # "File(F)" menu 
      - Open File (O)
         Open the file or playlist.

      - Open folder (F)
         Open the folder and the register all songs in the folder. Songs in
         sub folders are also registered.

      - Load PCM for PMD (P)
         Load PCM data for PMD by force.
         Use when the song doesn't specify PCM for it.

      - Save PlayList (S)
         Save songs which registered at the current playlist. It is saved in
         m3u format. (Only file names are registered.)

      - Wav recording (W)
         Replay current song and write as wav file.
         Only one file is written even if it's on continuous play mode.
         Push Stop or Fadeout button or use Auto Fadeout in Environment Setting
         to stop writing. 
         The frequency of wav file depends on the setting of synthesis
         frequency.

      - Environment setting (E)
         Open Environment Setting.

      - Exit (X)
         Finish FMPMD2000.

    # "Play (P)" menu

      - Start (S)
         Start playing.
         If there's no file in playlist, it starts file open dialogue.
         Also it cancels the pause when the song is suspended.
         * Japanese font (Msgothic.ttc) is required to display Japanese titles.

      - Pause (A)
         Pause the current song.
         It cancels the pause when it's suspended.

      - Fadeout (F)
         Fadeout and stop the current song.

      - Stop playing (S)
         Soon it stops the current song.

      - Next Music (N)
         Play the next song on playlist.

      - Previous Music (B)
         Play the previous song on playlist.

      - Random Play (R)
         Check it to enter random play mode.
         Cancel it to return to the normal play mode.

      - Loop Play (L)
         Check it to return the first song after it finishes the final song of
         playlist.

    # "Window (W)" menu

      - PlayList (L)
         Open playlist window.
         You can display and manage playlist.

      - Volume adjustment
         Open volume adjustment window.
         You can adjust volumes for each FM/SSG/Rhythm/ADPCM/PPZ part.
         FMP and PMD are managed separately.

      - PartMask (M)
         Open partmask window.
         You can mask parts by your mouse operation.
         Masking by keyboard operation is available without the window.
         (-> = Part Masking by Keyboard Operation)

      - Level indicator (E)
         Display volume level indicator.

      - Spectrum analyzer (S)
         Display spectrum analyzer.
         Both the frequency and the volume level are shown with the logarithm
         scale.
         The frequency at the left edge means about 100Hz, at the right edge
         means about 10000Hz, at the center means about 2000Hz.
         It omits some processing steps for the purpose of faster (realtime)
         processing. So it doesn't fit strict analyzing.

      - Parameter (P)
         Display parameter viewer based on text.

      - Console (C)
         Open cosole output screen.
         Display informations about memos and so on for FMP, KARAOKE and
         PMD.

    # "Help (H)" menu
      - Version Information (A)
         Display each version of FMPMD2000, WinFMP.dll, PMDWin.dll. 



------------------------------------------------------------------------------
= Tasktray Pop Up Menu Operation

    # Minimize(M) / Restore(V)
         Minimize / Restore a main window.

    # Open File (O)
    # Open folder (F)
    # Start (P)
    # Pause (A)
    # Stop (S)
    # Random Play (R)
    # Loop Play (L)
    # Environment setting (E)
    # Exit (X)
         Same as Main menu.



------------------------------------------------------------------------------
= Main Window Operation

    # Buttons/Slider
       Play the song data, stop playing, etc.
       Just click eject button to select files. SHIFT + click to select
       folders.

    #Check Boxes
       - PPS
          Check to play K/R rhythm parts of PMD song data by using PPS.
          Without checking it plays with PMD internal SSG drums.

    #SSG+RHY
          Check to play OPNA rhythm module synchronisticly when it plays K/R
          rhythm parts of PMD song data.
          It equals /N option of PMDB2/PMD86/PMDPPZ.

    #PMD86 -> B2 
          Check to make trying to fit the specification of PCM to ADPCM when
          it plays FMP song data.
          It equals /S option of PMD86.

    #PPZ8EM
          Check to play ADPCM parts by using PPZ8 when it plays FMP song data.



------------------------------------------------------------------------------
= Playlist Operation

    # Mouse operation
      - Double Click
         Play the selected song.

      - Right Click
         Display popup menu. You can "Cut", "Copy", "Paste", "Select all" on
         playlist.

    # Keyboard operation
      - Enter Key
         Play the selected song.

      - Delete Key
         Delete the selected song from playlist.

      - CTRL + X Key
         Cut the selected song from playlist.

      - CTRL + C Key
         Copy the selected song to internal clip board.

      - CTRL + V Key
         Paste the selected song.

      - CTRL + A Key
         Select all songs on playlist.



------------------------------------------------------------------------------
= Drag And Drop

    # Drag and drop to Playlist window
       Add the dropped file to playlist.

    # Drag and drop to other windows
       Delete current playrist and add the dropped song to playlist.

------------------------------------------------------------------------------
= Part Masking by Keyboard Operation

    All means full keys (!ten keys).

    "1" - "6" : FM1    - FM6
    "7" - "9" : SSG1   - SSG3
    "0"       : Rhythm
    "-"       : ADPCM
    "Q" - "E" : FM3Ex1 - FM3Ex3
    "A" - "K" : PPZ1   - PPZ8 (for PMD only)

    Typing the above keys plus SHIFT key, it sounds the specified part only.

    "^"       : Turn over all parts.
    "\"       : Cancel all masked parts.



------------------------------------------------------------------------------
= Command Line Options

    songfile name : Play the specified song. Full pathname is required.
    "/p" or "-p"  : Restart the loaded song from the top.
    "/s" or "-s"  : Stop playing.
    "/a" or "-a"  : Pause / Cancel pausing.
    "/f" or "-f"  : Fadeout playing.
    "/n" or "-n"  : Play the next song.
    "/b" or "-b"  : Play the previous song.



------------------------------------------------------------------------------
= Confirmed Environments of Operations

   Selfmade AT clone (Asustek P4B266-E, Pentium4 1.8GHz, ELSA GLADIAC FX 534,
                      AOpen AW744 Pro, etc.�j

            + WindowsXP SP1                  synthesis frequency=55kHz
            + Windows98                      synthesis frequency=55kHz 

    SHARP Mebius FJ-200U(Celeron 600MHz, built-in YMF734)
            + Windows2000 SP4                synthesis frequency=55kHz
            + WindowsMe                      synthesis frequency=55kHz



------------------------------------------------------------------------------
= Service Conditions And Reprints

    This is a free software. All copyrights are saved by C60. However, the
    copyright of original FMP is saved by Guu, the copyright of PMD98 is saved
    by KAJA, the copyright of PPZ8 is saved by Ukky, the copyright of FM
    synthesis engine is saved by cisc, the copyright of BrowseDialog component
    is saved by Maeda, the copyright of color changeable track bar is saved by
    fumika, the copyright of Trayicon component is saved by Yukio Tsujihara.
    (Modified and supported by Taro Kato.)
    The author doesn't accept any responsibilities even if WinFMP, PMDWin and
    FMPMD2000 cause troubles like data lost or machine broken.
    The author doesn't accept any duties to correct the program even if
    WinFMP, PMDWin and FMPMD2000 include bugs or troubles. (However I will
    make effort to correct when you'll bring reports of them.)
    I prohibit any reprints or any distributions. However, source codes of
    PMDWin/FMPMD2000 including changes are not the same if you contact the
    author before release them.
    Softwares including source codes of PMDWin/FMPMD2000 are allowed to
    release as free softwares if you contact the author before release.
    Feel free to release softwares which use WinFMP.dll/PMDWin.dll as free
    softwares. In the case of release it will be welcome for you contact to the
    author.
    To release commercial softwares (including shareware) which insert some or
    all parts of source codes of PMDWin/FMPMD2000, You have to get agreement
    from the author.
    To distribute changed PMDWin/FMPMD2000, you have to express clearly the
    copyright of PMDWin/FMPMD2000 and the contents of changes.
    Please open the source code to the public if you insert or change the part
    related to playing music from *.cpp or *.pas (except WinFMP.pas,
    PMDWin.pas, PCMMusDriver.pas and FMPMDdefine.pas).



------------------------------------------------------------------------------
= Acknowledgments

    Thanks to Guu who developed the excellent music driver FMP and allowed to
    release this program, KAJA who developed the high-performance music driver
    PMD and allowed to release this program, Ukky who not only developed PPZ8
    to enlarge the possibilities of music driver but also provide the source
    code and allowed to release the program, cisc who not only developed the
    high-effective FM synthesis engine and allowed to use and release this
    program but also fixed bugs of PMDWin, Moonlight who allowed to use an
    algorithm of the compressor, TAN-Y who found many bugs, Mamiya who
    developed Winamp plug-in, Kigami who developed PMV, Maeda and fumika who
    released useful components, all the person who sent me bug reports,
    precious opinions and requests.



------------------------------------------------------------------------------
= History

ver.0.01        1999/08/02
ver.0.02        1999/08/04
ver.0.03        1999/08/08
ver.0.04        1999/08/16
ver.0.05        1999/08/29
ver.0.06        1999/09/19
ver.0.06b       1999/09/20
ver.0.07        1999/10/03
ver.0.08        1999/10/24
ver.0.09        1999/11/20
ver.0.10        1999/11/28
ver.0.11        1999/12/18
ver.0.12        2000/01/10
ver.0.13        2000/02/28
ver.0.14        2000/03/19
ver.0.15        2000/06/11
ver.0.16        2000/06/24
ver.0.17        2000/06/25
ver.0.18        2000/08/20
ver.0.19        2001/01/21
ver.0.20        2001/02/17
ver.0.21        2001/05/06
ver.0.22        2001/08/05
ver.0.23        2001/09/16

(omit details for the above)

ver.0.24        2001/12/22
    It was crashed on WindowsXP + YMF744 - fixed.

ver.0.25        2002/01/06
    Added FMP karaoke
    Added "Playing by force" option to play without PCM datas. (PVI, PPC, etc.)
    Changed UI for Main Window and Status Window. Now you can change the size
    of Status Window.
    Reduced the flicker of level meter. Now the size is adjustable.
    After start, it needed to play once to save wav file - fixed.

ver.0.26        2002/01/14
    Installing FMP font to Win9x caused an access violation - fixed .
    Supported ADPCM part emulation of WinFMP.
    Reinforced an error check for the file name passing when it starts twice.

ver.0.27        2002/06/16
    Graphical letters and ruled line letters of PC98 are now available at 
    "Console"
    Fixed inaccurate vertical line location of "Console"
    Changed to play broken PCM file under "Playing without PCM data by force"
    mode.
    It might not allow to display Parameter viewer and PCM files under 
    "Playing without PCM data by force" mode - fixed.
    It might not allow to get playtime from songs without PCM files under
    "Playing without PCM data by force" mode - fixed. 

ver.0.28	 2002/07/13
    Now other sub windows move along with dragged main window. 
    Now it can show icon to tasktray. (The switch is at "others" of 
    "environment setting".)
    Status Window displays wrong file name in case it contains Kanji letters
    - fixed.
    Produced English version.

ver.0.29	 2002/08/18
    When pause is enabled, if stop the song and play again, Status window
    is freezed - fixed.
    Rename label in Partmask window. "PSG" -> "SSG".

ver.0.30	 2002/10/27
    It displayed whether the sub window would be open on the
    "window (W)" menu.
    The sub window was closed, when the sub window was open and the
    "window (W)" menu was chosen.

ver.0.31	 2003/09/28
    When eject button is clicked with pushing the SHIFT button, 
    ignored the selecting folder - fixed.



------------------------------------------------------------------------------
= Contact

    E-mail                  HQD00151@nifty.com
    Homepage                http://www.fmp.jp/~c60/
                            http://member.nifty.ne.jp/C60/



                                                                C60

* Those of you who don't read Japanese language, contact through VORC.

    E-mail                  info@vorc.org
    Homepage                http://www.vorc.org
```