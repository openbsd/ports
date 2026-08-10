COMMENT =	automatically give your module the ability to have plugins

DISTNAME =	Module-Pluggable-6.4
CPAN_AUTHOR =	SIMONW

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Module-Runtime>=0.012

PKG_ARCH =		*

pre-configure:
	# do not atmept to delete files in /usr/libdata/perl5
	rm -- ${WRKSRC}/installscripts/remove_stale_core_copies.pl

.include <bsd.port.mk>
