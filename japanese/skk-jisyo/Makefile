# $OpenBSD: Makefile,v 1.4 2013/10/30 20:21:11 fgsch Exp $

COMMENT =	large dictionary for the SKK system

DISTNAME =	skk-jisyo-20131026

CATEGORIES =	japanese

HOMEPAGE =	http://openlab.ring.gr.jp/skk/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://distfiles.bsdfrog.org/

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*
WRKSRC =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/skk
	${INSTALL_DATA} ${WRKSRC}/SKK-JISYO.L ${PREFIX}/share/skk

.include <bsd.port.mk>
