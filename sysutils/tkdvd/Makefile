# $OpenBSD: Makefile,v 1.2 2006/12/24 06:46:04 steven Exp $

COMMENT=		"GUI to dvd+rw-tools and cdrecord"

DISTNAME=		tkdvd-4.0.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils

HOMEPAGE=		http://regis.damongeot.free.fr/tkdvd/

MAINTAINER=		Vlad Glagolev <stelzy@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE:=dl/}

WRKDIST=		${WRKDIR}/tkdvd

BUILD_DEPENDS=		:tcl-8.4*:lang/tcl/8.4
RUN_DEPENDS=		::sysutils/cdrtools \
			::sysutils/dvd+rw-tools \
			:tk-8.4*:x11/tk/8.4

NO_REGRESS=		Yes

pre-build:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${WRKSRC}/{install.tcl,TkDVD.sh}

do-build:
	cd ${WRKDIST} && ./install.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdvd-install.sh ${PREFIX}/bin/tkdvd
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/tkdvd
	${INSTALL_DATA} ${WRKSRC}/icons/*.png ${PREFIX}/share/icons/tkdvd
	${INSTALL_DATA_DIR} ${PREFIX}/share/tkdvd
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/tkdvd

.include <bsd.port.mk>
