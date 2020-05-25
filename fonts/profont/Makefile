# $OpenBSD: Makefile,v 1.6 2020/05/25 04:30:12 bentley Exp $

COMMENT =		fixed width fonts especially for long hacking sessions

DISTNAME =		ProFont-2.2
CATEGORIES =		fonts x11
REVISION =		2

HOMEPAGE =		http://www.fontsquirrel.com/fonts/ProFontWindows

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# redistribute unmodified copies with included license
PERMIT_PACKAGE =		Yes

# Upstream keeps re-rolling the distfile without bumping the version
MASTER_SITES =		https://distfiles.sigtrap.nl/ \
			http://www.fontsquirrel.com/fonts/download/ProFontWindows/
EXTRACT_SUFX =		.zip

NO_BUILD=		Yes
NO_TEST =		Yes

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/profont

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/ProFont\ Redistribution\ Terms.txt \
		${FONTDIR}/ProFont_Redistribution_Terms.txt

.include <bsd.port.mk>
