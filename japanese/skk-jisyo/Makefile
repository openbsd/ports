# $OpenBSD: Makefile,v 1.3 2013/10/01 09:07:15 ajacoutot Exp $

COMMENT =	large dictionary for the SKK system

DISTNAME =	skk-jisyo-20120901

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
