# $OpenBSD: Makefile,v 1.7 2009/03/11 21:39:42 sthen Exp $

COMMENT=		GUI to dvd+rw-tools and cdrecord

DISTNAME=		tkdvd-4.0.6
PKGNAME=		${DISTNAME}p2
CATEGORIES=		sysutils

HOMEPAGE=		http://regis.damongeot.free.fr/tkdvd/

MAINTAINER=		Vlad Glagolev <stealth@sourcemage.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE:=dl/}

WRKDIST=		${WRKDIR}/tkdvd

MODULES=		x11/tk

BUILD_DEPENDS=		${MODTCL_RUN_DEPENDS}
RUN_DEPENDS=		::sysutils/cdrtools \
			::sysutils/dvd+rw-tools \
			${MODTK_RUN_DEPENDS}

NO_REGRESS=		Yes

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
