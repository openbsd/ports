package OpenBSD::PackingElement;
sub ghc_alter
{
}

package OpenBSD::PackingElement::Unexec;
sub ghc_alter
{
	my ($self, $rchanged) = @_;
	$$rchanged = 1;
	bless $self, "OpenBSD::PackingElement::Comment";

}

package OpenBSD::Quirks::ghc;

sub unfuck
{
	my ($handle, $state) = @_;
	my $pkgname = $handle->pkgname;
	my $plist = OpenBSD::PackingList->from_installation($pkgname);
	my $changed = 0;
	$plist->ghc_alter(\$changed);
	if ($changed) {
		OpenBSD::PackingElement::File->add($plist, 
		    'lib/ghc/package.conf.d/Cabal-2.0.1.0.conf');
		OpenBSD::PackingElement::File->add($plist, 
		    'lib/ghc/package.conf.d/array-0.5.2.0.conf');
		$plist->to_installation;
	}
}

1;
