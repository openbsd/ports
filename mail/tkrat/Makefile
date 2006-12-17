# $OpenBSD: Makefile,v 1.20 2006/12/17 20:13:33 kili Exp $

COMMENT=	"mail user agent for X in C with a Tcl/Tk frontend"

DISTNAME=	tkrat-2.1.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail x11

HOMEPAGE=	http://www.tkrat.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

MASTER_SITES=	ftp://ftp.tkrat.org/pub/tkrat/

RUN_DEPENDS=	:tk-8.4.*:x11/tk/8.4	
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_X11=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${LOCALBASE}/include/tcl8.4 \
			${LOCALBASE}/include/tk8.4"

NO_REGRESS=	Yes

DOCS=	CONFIGURATION doc/interface doc/userproc.example doc/userprocs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tkrat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	${INSTALL_DATA} ${WRKSRC}/lib/pkgIndex.tcl ${PREFIX}/lib/tkrat
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
