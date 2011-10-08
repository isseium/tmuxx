if [ $TMUX ]; then
    # tmux 
    RESTORE_DIR=~/.tmux/restore
    mkdir -p $RESTORE_DIR

    # カレントディレクトリをウィンドウ番号のファイルへ保存
    CONFIG_FILE=$RESTORE_DIR/`tmux display -p '#I'`.config
    WINDOW_ID=`tmux display -p '#I'`
    echo pwd=`pwd` > $CONFIG_FILE
    echo window_id=$WINDOW_ID >> $CONFIG_FILE
    echo window_name=`tmux display -p '#W'` >> $CONFIG_FILE
fi
