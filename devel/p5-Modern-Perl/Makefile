# $OpenBSD: Makefile,v 1.5 2018/12/10 09:46:26 jca Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		CHROMATIC
DISTNAME =		Modern-Perl-1.20181021
CATEGORIES =		devel

MAINTAINER =		Edward <edward@rdtan.net>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Modern-Perl
	${INSTALL_DATA} \
		${WRKSRC}/{README,Changes,LICENSE} ${PREFIX}/share/doc/p5-Modern-Perl

.include <bsd.port.mk>
