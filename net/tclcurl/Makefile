# $OpenBSD: Makefile,v 1.13 2009/03/16 10:38:09 sthen Exp $

COMMENT=		Tcl bindings for Curl
SHARED_ONLY=		Yes

DISTNAME=		TclCurl-0.10.5
PKGNAME=		${DISTNAME}p4
CATEGORIES=		net

HOMEPAGE=		http://personal.iddeo.es/andresgarci/tclcurl/english/

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto idn ssl z 

MASTER_SITES=		${HOMEPAGE}download/tarball/

MODULES=		lang/tcl
MODTCL_VERSION=		8.4
LIB_DEPENDS=    	curl.>=2.2::net/curl \
			${MODTCL_LIB_DEPENDS:S/tcl/tclstub/}

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tclinclude=${MODTCL_INCDIR}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

# broken in this version
REGRESS_TARGET= 	test
NO_REGRESS=		Yes

MAN_FILES=		tclcurl.n tclcurl_multi.n

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODTCL_LIBDIR}/tclcurl0.105
	${INSTALL_DATA} ${WRKDIST}/libtclcurl0105.so \
		${WRKINST}/${MODTCL_LIBDIR}/tclcurl0.105
	${INSTALL_DATA} ${WRKDIST}/generic/tclcurl.tcl \
		${WRKINST}/${MODTCL_LIBDIR}/tclcurl0.105
	${INSTALL_MAN_DIR} ${PREFIX}/man/mann
	${INSTALL_DATA} ${WRKDIST}/pkgIndex.tcl \
		${WRKINST}/${MODTCL_LIBDIR}/tclcurl0.105
.for file in ${MAN_FILES}
	${INSTALL_DATA} ${WRKDIST}/doc/${file} ${PREFIX}/man/mann
.endfor
	
.include <bsd.port.mk>
