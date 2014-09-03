# $OpenBSD: Makefile,v 1.1.1.1 2014/09/03 10:06:23 landry Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
CPAN_AUTHOR =		CHROMATIC
DISTNAME =		Modern-Perl-1.20140107
CATEGORIES =		devel

MAINTAINER =		Edward <edward@rdtan.net>

# The Artistic License 1.0
PERMIT_PACKAGE_CDROM =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Modern-Perl
	${INSTALL_DATA} \
		${WRKSRC}/{README,Changes,LICENSE} ${PREFIX}/share/doc/p5-Modern-Perl

.include <bsd.port.mk>
