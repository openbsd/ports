# $OpenBSD: Makefile,v 1.1.1.1 2000/06/07 16:40:02 kevlo Exp $

DISTNAME=	tkTable
PKGNAME=	tkTable-2.5
CATEGORIES=	x11
NEED_VERSION=	1.234

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.hobbs.wservice.com/tcl/capp/tkTable/

BUILD_DEPENDS=	wish8.3::x11/tk/8.3

WRKDIST=	${WRKDIR}/Tktable2.5/src

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=--with-tcl=${PREFIX}/lib/tcl8.3 \
		--with-tk=${PREFIX}/lib/tk8.3

FAKE=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/Tktable/demos
	${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${PREFIX}/lib/Tktable
	${INSTALL_DATA} ${WRKSRC}/../lib/tkTable.tcl ${PREFIX}/lib/Tktable
	${INSTALL_MAN} ${WRKSRC}/../doc/tkTable.n ${PREFIX}/man/mann
	${INSTALL_PROGRAM} ${WRKSRC}/Tktable.so.2.5 ${PREFIX}/lib/Tktable
	@cp ${WRKSRC}/../demos/* ${PREFIX}/lib/Tktable/demos

.include <bsd.port.mk>
