# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:59 sthen Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		CHROMATIC
DISTNAME =		Modern-Perl-1.20181021
CATEGORIES =		devel

MAINTAINER =		Edward <edward@rdtan.net>

# Perl
PERMIT_PACKAGE =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Modern-Perl
	${INSTALL_DATA} \
		${WRKSRC}/{README,Changes,LICENSE} ${PREFIX}/share/doc/p5-Modern-Perl

.include <bsd.port.mk>
