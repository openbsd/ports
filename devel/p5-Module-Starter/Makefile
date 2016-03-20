# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:28 naddy Exp $

COMMENT =		simple starter kit for any module

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Module-Starter-1.54
REVISION =		2
CATEGORIES =		devel
CPAN_AUTHOR =		PETDANCE

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

DOC_DIR =	${PREFIX}/share/doc/p5-Module-Starter/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DOC_DIR}

.include <bsd.port.mk>
