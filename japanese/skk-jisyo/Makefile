# $OpenBSD: Makefile,v 1.1.1.1 2012/09/11 15:04:54 fgsch Exp $

COMMENT =	large dictionary for the SKK system

DISTNAME =	skk-jisyo-20120901

CATEGORIES =	japanese

HOMEPAGE =	http://openlab.ring.gr.jp/skk/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://distfiles.bsdfrog.org/

NO_BUILD =	Yes
NO_REGRESS =	Yes

PKG_ARCH =	*
WRKSRC =	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/skk
	${INSTALL_DATA} ${WRKSRC}/SKK-JISYO.L ${PREFIX}/share/skk

.include <bsd.port.mk>
