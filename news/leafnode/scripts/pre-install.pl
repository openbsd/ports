#!/usr/bin/perl
#

eval '(exit $?0)' && eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
& eval 'exec /usr/bin/perl -S $0 $argv:q'
if 0;

if( $> ) {
	print "\nYou must be root to run this step!\n\n";
	exit 1;
} 

if( getpwnam( "news" ) ) {
	( $null, $null, $pgUID ) = getpwnam( "news" );
} else {
	$pgUID = 75;
	while( getpwuid( $pgUID ) ) {
		$pgUID++;
	}
}

if( getgrnam( "news" ) ) {
	( $null, $null, $pgGID ) = getgrnam( "news" );
} else {
	$pgGID = 75;
	while( getgrgid( $pgGID ) ) {
		$pgGID++;
	}
	&append_file( "/etc/group", "news:*:$pgGID:" );
}

print "news user using uid $pgUID\n";
print "news user using gid $pgGID\n";

print(  "/usr/bin/chpass -a \"news:*:$pgUID\:$pgGID\:\:\:\:news pseudo-user:/var/spool/news:/bin/sh\"" );
system( "/usr/bin/chpass -a \"news:*:$pgUID\:$pgGID\:\:\:\:news pseudo-user:/var/spool/news:/bin/sh\"" );
print( "\n" );

sub append_file {
	local($file,@list) = @_;
	local($LOCK_EX) = 2;
	local($LOCK_NB) = 4;
	local($LOCK_UN) = 8;

	open(F, ">> $file") || die "$file: $!\n";
	while( ! flock( F, $LOCK_EX | $LOCK_NB ) ) {
		exit 1;
	}
	print F join( "\n", @list) . "\n";
	close F;
	flock( F, $LOCK_UN );
}
