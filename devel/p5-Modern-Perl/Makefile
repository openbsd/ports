# $OpenBSD: Makefile,v 1.2 2015/04/09 01:52:39 afresh1 Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
CPAN_AUTHOR =		CHROMATIC
DISTNAME =		Modern-Perl-1.20150127
CATEGORIES =		devel

MAINTAINER =		Edward <edward@rdtan.net>

# The Artistic License 1.0
PERMIT_PACKAGE_CDROM =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Modern-Perl
	${INSTALL_DATA} \
		${WRKSRC}/{README,Changes,LICENSE} ${PREFIX}/share/doc/p5-Modern-Perl

.include <bsd.port.mk>
