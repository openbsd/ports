# $OpenBSD: Makefile,v 1.13 2001/07/12 08:38:15 kevlo Exp $

COMMENT=	"mail user agent for X in C with a Tcl/Tk frontend"

DISTNAME=	tkrat-2.0.2
CATEGORIES=	mail x11
NEED_VERSION=	1.402

HOMEPAGE=	http://www.tkrat.org/

MAINTAINER=	Rik Schneider <rik@deranged.schneider.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/stable/

LIB_DEPENDS=	tcl83.1.3::lang/tcl/8.3 \
		tk83.1.3::x11/tk/8.3	

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tcl-bin="${LOCALBASE}/bin" \
		--with-tcl-include="${LOCALBASE}/include/tcl8.3 \
			${LOCALBASE}/include/tk8.3"

DOCS=	CONFIGURATION doc/interface doc/userproc.example doc/userprocs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tkrat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkrat
	${INSTALL_DATA} ${WRKSRC}/lib/pkgIndex.tcl ${PREFIX}/lib/tkrat
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/tkrat

.include <bsd.port.mk>
