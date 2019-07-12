# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:15 sthen Exp $

COMMENT =	large dictionary for the SKK system

DISTNAME =	skk-jisyo-20131026

CATEGORIES =	japanese

HOMEPAGE =	http://openlab.ring.gr.jp/skk/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://distfiles.bsdfrog.org/

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*
WRKSRC =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/skk
	${INSTALL_DATA} ${WRKSRC}/SKK-JISYO.L ${PREFIX}/share/skk

.include <bsd.port.mk>
