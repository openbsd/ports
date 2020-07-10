# $OpenBSD: Makefile,v 1.2 2020/07/10 15:39:31 bcallah Exp $

V =		2007.01
COMMENT =	Microsoft programming/terminal font
DISTNAME =	CascadiaCode-${V}
PKGNAME =	cascadia-code-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	fonts x11

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/microsoft/cascadia-code/releases/download/v${V}/

MODULES =	font

PKG_ARCH =	*

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/cascadia
	${INSTALL_DATA} ${WRKDIR}/ttf/*.ttf ${PREFIX}/share/fonts/cascadia
	${INSTALL_DATA} ${WRKDIR}/otf/*.otf ${PREFIX}/share/fonts/cascadia

.include <bsd.port.mk>
