/*
 * Count off and report the number of seconds elapsed
 * char なので 255 までカウントしたら 0 に戻る
 */
dtrace:::BEGIN
{
    i = (char)0;
}

profile:::tick-100msec
{
    trace(++i);
}

dtrace:::END
{
    trace(i);
}

