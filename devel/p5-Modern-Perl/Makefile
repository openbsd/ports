# $OpenBSD: Makefile,v 1.4 2017/03/24 15:56:38 tsg Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		CHROMATIC
DISTNAME =		Modern-Perl-1.20170117
CATEGORIES =		devel

MAINTAINER =		Edward <edward@rdtan.net>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Modern-Perl
	${INSTALL_DATA} \
		${WRKSRC}/{README,Changes,LICENSE} ${PREFIX}/share/doc/p5-Modern-Perl

.include <bsd.port.mk>
