# $OpenBSD: Makefile,v 1.7 2019/07/17 14:49:21 danj Exp $

COMMENT =		enable all of the features of Modern Perl with one import

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		CHROMATIC
DISTNAME =		Modern-Perl-1.20181021
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Modern-Perl
	${INSTALL_DATA} \
		${WRKSRC}/{README,Changes,LICENSE} ${PREFIX}/share/doc/p5-Modern-Perl

.include <bsd.port.mk>
