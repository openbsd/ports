# $OpenBSD: Makefile,v 1.11 2013/03/11 11:41:33 espie Exp $

COMMENT=		GUI to dvd+rw-tools and cdrecord

DISTNAME=		tkdvd-4.0.9
REVISION =		0
CATEGORIES=		sysutils

HOMEPAGE=		http://regis.damongeot.free.fr/tkdvd/

MAINTAINER=		Vlad Glagolev <stealth@sourcemage.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE:=dl/}

WRKDIST=		${WRKDIR}/tkdvd

MODULES=		x11/tk

BUILD_DEPENDS=		${MODTCL_RUN_DEPENDS}
RUN_DEPENDS=		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			${MODTK_RUN_DEPENDS}

NO_TEST=		Yes

pre-build:
			${SUBST_CMD} ${WRKSRC}/{install.tcl,TkDVD.sh}

do-build:
	cd ${WRKDIST} && ./install.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdvd-install.sh ${PREFIX}/bin/tkdvd
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/tkdvd
	${INSTALL_DATA} ${WRKSRC}/icons/*.png ${PREFIX}/share/icons/tkdvd
	${INSTALL_DATA_DIR} ${PREFIX}/share/tkdvd
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/tkdvd

.include <bsd.port.mk>
