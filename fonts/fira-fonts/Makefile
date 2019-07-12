# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:11 sthen Exp $

COMMENT =		Firefox OS typeface

DISTNAME=		fira-fonts-20170227

GH_ACCOUNT =		carrois
GH_PROJECT =		Fira
GH_COMMIT =		a606927401bcc3951587339fee53aa882856b51b

CATEGORIES =		fonts x11

HOMEPAGE =		https://carrois.com/typefaces/FiraSans/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

FONTS_DIR =		${PREFIX}/share/fonts/fira
WEBFONTS_DIR =		${PREFIX}/share/fira-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR} ${WEBFONTS_DIR}/webfonts
	@echo 'This directory contains the web version of the Fira typeface' >\
		${WEBFONTS_DIR}/README
	${INSTALL_DATA} ${WRKSRC}/Fira_Sans_4_2/Fonts/FiraSans_OTF_4203/*/*/* \
		${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/Fira_Sans_4_2/Fonts/FiraSans_WEB_4203/*/*/* \
		${WEBFONTS_DIR}/webfonts
	${INSTALL_DATA} ${WRKSRC}/Fira_Mono_3_2/Fonts/FiraMono_OTF_32/* \
		${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/Fira_Mono_3_2/Fonts/FiraMono_WEB_32/* \
		${WEBFONTS_DIR}/webfonts
	${INSTALL_DATA} ${WRKSRC}/Fira_Code_3_2/Fonts/FiraCode_OTF_32/* \
		${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/Fira_Code_3_2/Fonts/FiraCode_WEB_32/* \
		${WEBFONTS_DIR}/webfonts

.include <bsd.port.mk>
