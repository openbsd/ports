#compdef rclone

_arguments \
  '1: :->level1' \
  '2: :->level2' \
  '3: :_files'
case $state in
  level1)
    case $words[1] in
      rclone)
        _arguments '1: :(about authorize cachestats cat check cleanup config copy copyto copyurl cryptcheck cryptdecode dbhashsum dedupe delete deletefile genautocomplete gendocs hashsum help info link listremotes ls lsd lsf lsjson lsl md5sum memtest mkdir move moveto ncdu obscure purge rc rcat rcd reveal rmdir rmdirs serve settier sha1sum size sync touch tree version)'
      ;;
      *)
        _arguments '*: :_files'
      ;;
    esac
  ;;
  level2)
    case $words[2] in
      config)
        _arguments '2: :(create delete dump edit file password providers show update)'
      ;;
      genautocomplete)
        _arguments '2: :(bash zsh)'
      ;;
      help)
        _arguments '2: :(backend backends flags)'
      ;;
      serve)
        _arguments '2: :(dlna ftp http restic sftp webdav)'
      ;;
      *)
        _arguments '*: :_files'
      ;;
    esac
  ;;
  *)
    _arguments '*: :_files'
  ;;
esac
