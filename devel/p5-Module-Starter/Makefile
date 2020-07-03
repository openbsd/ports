# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:01 sthen Exp $

COMMENT =		simple starter kit for any module

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Module-Starter-1.54
REVISION =		4
CATEGORIES =		devel
CPAN_AUTHOR =		PETDANCE

# Perl
PERMIT_PACKAGE =		Yes

DOC_DIR =	${PREFIX}/share/doc/p5-Module-Starter/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DOC_DIR}

.include <bsd.port.mk>
