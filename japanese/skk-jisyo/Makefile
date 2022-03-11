COMMENT =		large dictionary for the SKK system

DISTNAME =		SKK-JISYO.L
EXTRACT_SUFX =		.gz
PKGNAME =		skk-jisyo-20201101
DIST_SUBDIR =		skk-jisyo-20201101

CATEGORIES =		japanese

HOMEPAGE =		http://openlab.ring.gr.jp/skk/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://openlab.ring.gr.jp/skk/dic/

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*
WRKSRC =		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/skk
	${INSTALL_DATA} ${WRKSRC}/SKK-JISYO.L ${PREFIX}/share/skk

.include <bsd.port.mk>
