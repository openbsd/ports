# $OpenBSD: Makefile,v 1.1 2003/08/12 02:20:31 jose Exp $

COMMENT=		"Tcl bindings for Curl"
NOT_FOR_ARCHS= 		${NO_SHARED_ARCHS}

DISTNAME=		TclCurl-0.10.5
CATEGORIES=		net

HOMEPAGE=		http://personal1.iddeo.es/andresgarci/tclcurl/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/tarball/

LIB_DEPENDS=    	curl.2.2::net/curl \
			tcl83.1.3::lang/tcl/8.3

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-tcl=${LOCALBASE}/lib/tcl8.3 \
			--with-tclinclude=${LOCALBASE}/include/tcl8.3/ 
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

# broken in this version
REGRESS_TARGET= 	test
NO_REGRESS=		Yes

MAN_FILES=		tclcurl.n tclcurl_multi.n

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tcl8.3/tclcurl0.105
	${INSTALL_DATA} ${WRKDIST}/libtclcurl0105.so \
		${PREFIX}/lib/tcl8.3/tclcurl0.105
	${INSTALL_DATA} ${WRKDIST}/generic/tclcurl.tcl \
		${PREFIX}/lib/tcl8.3/tclcurl0.105
	${INSTALL_MAN_DIR} ${PREFIX}/man/mann
	${INSTALL_DATA} ${WRKDIST}/pkgIndex.tcl \
		${PREFIX}/lib/tcl8.3/tclcurl0.105
.for file in ${MAN_FILES}
	${INSTALL_DATA} ${WRKDIST}/doc/${file} ${PREFIX}/man/mann
.endfor
	
.include <bsd.port.mk>
