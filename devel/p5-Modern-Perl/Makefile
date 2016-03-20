# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:27 naddy Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
PKG_ARCH =		*
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
