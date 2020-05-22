# $OpenBSD: Makefile,v 1.1.1.1 2020/05/22 21:57:26 bcallah Exp $

V =		2005.15
COMMENT =	Microsoft programming/terminal font
DISTNAME =	CascadiaCode_${V}
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
