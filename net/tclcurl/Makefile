# $OpenBSD: Makefile,v 1.9 2006/08/03 23:15:58 espie Exp $

COMMENT=		"Tcl bindings for Curl"
NOT_FOR_ARCHS= 		${NO_SHARED_ARCHS}

DISTNAME=		TclCurl-0.10.5
PKGNAME=		${DISTNAME}p2
CATEGORIES=		net

HOMEPAGE=		http://personal.iddeo.es/andresgarci/tclcurl/english/

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl z 

MASTER_SITES=		${HOMEPAGE}download/tarball/

LIB_DEPENDS=    	curl.>=2.2::net/curl \
			tclstub84:tcl-8.4.*:lang/tcl/8.4

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-tcl=${LOCALBASE}/lib/tcl8.4 \
			--with-tclinclude=${LOCALBASE}/include/tcl8.4/ 
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

# broken in this version
REGRESS_TARGET= 	test
NO_REGRESS=		Yes

MAN_FILES=		tclcurl.n tclcurl_multi.n

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tcl8.4/tclcurl0.105
	${INSTALL_DATA} ${WRKDIST}/libtclcurl0105.so \
		${PREFIX}/lib/tcl8.4/tclcurl0.105
	${INSTALL_DATA} ${WRKDIST}/generic/tclcurl.tcl \
		${PREFIX}/lib/tcl8.4/tclcurl0.105
	${INSTALL_MAN_DIR} ${PREFIX}/man/mann
	${INSTALL_DATA} ${WRKDIST}/pkgIndex.tcl \
		${PREFIX}/lib/tcl8.4/tclcurl0.105
.for file in ${MAN_FILES}
	${INSTALL_DATA} ${WRKDIST}/doc/${file} ${PREFIX}/man/mann
.endfor
	
.include <bsd.port.mk>
