# $OpenBSD: Makefile,v 1.15 2002/10/27 17:21:40 naddy Exp $

COMMENT=	"mail user agent for X in C with a Tcl/Tk frontend"

DISTNAME=	tkrat-2.0.3
CATEGORIES=	mail x11

HOMEPAGE=	http://www.tkrat.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/stable/

LIB_DEPENDS=	tcl83.1.3::lang/tcl/8.3 \
		tk83.1.3::x11/tk/8.3	

USE_X11=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${LOCALBASE}/include/tcl8.3 \
			${LOCALBASE}/include/tk8.3"

NO_REGRESS=	Yes

DOCS=	CONFIGURATION doc/interface doc/userproc.example doc/userprocs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tkrat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	${INSTALL_DATA} ${WRKSRC}/lib/pkgIndex.tcl ${PREFIX}/lib/tkrat
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
