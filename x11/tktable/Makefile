# $OpenBSD: Makefile,v 1.3 2000/10/12 12:41:26 kevlo Exp $

DISTNAME=	Tktable2.6
PKGNAME=	Tktable-2.6
CATEGORIES=	x11
NEED_VERSION=	1.338
MASTER_SITES=   http://www.hobbs.wservice.com/tcl/capp/tkTable/

HOMEPAGE=       http://www.hobbs.wservice.com/tcl/capp/main.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	wish8.3::x11/tk/8.3

WRKDIST=	${WRKDIR}/${DISTNAME}/unix

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=--with-tcl=${PREFIX}/lib/tcl8.3 \
		--with-tk=${PREFIX}/lib/tk8.3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/Tktable
	@cp ${WRKSRC}/../demos/* ${PREFIX}/share/examples/Tktable

.include <bsd.port.mk>
