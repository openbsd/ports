# $OpenBSD: Makefile,v 1.10 2009/05/05 21:01:55 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	Mozilla's C implementation of JavaScript

V=		1.7.0
DISTNAME=	js-${V}
PKGNAME=	spidermonkey-${V}v0
SHARED_LIBS=	js 2.0
CATEGORIES=     lang

HOMEPAGE=	http://www.mozilla.org/js/spidermonkey/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/mozilla.org/js/ \
		http://ftp.mozilla.org/pub/mozilla.org/js/older-packages/

WANTLIB=	c m pthread readline termcap

LIB_DEPENDS=	nspr4.>=16:nspr->=4.6.3:devel/nspr

WRKDIST=	${WRKDIR}/js
WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.ref
MAKE_FLAGS=	SO_SUFFIX=so.${LIBjs_VERSION} \
		JS_THREADSAFE=YES \
		JS_NO_THIN_LOCKS=YES \
		XLDFLAGS="-L${LOCALBASE}/lib -pthread" \
		XCFLAGS="-I${LOCALBASE}/include/nspr" \
		CC=${CC} \
		CCC=${CXX}

USE_GMAKE=	Yes
NO_REGRESS=	Yes

HEADERS=	jsapi.h jsconfig.h jscompat.h jslong.h jsosdep.h \
		jsotypes.h jspubtd.h jstypes.h jsstr.h jshash.h jsprvtd.h \
		jsproto.tbl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Linux_All_DBG.OBJ/js ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Linux_All_DBG.OBJ/libjs.so.${LIBjs_VERSION} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/js
	@cd ${WRKSRC} && ${INSTALL_DATA} ${HEADERS} \
		${WRKSRC}/Linux_All_DBG.OBJ/jsautocfg.h ${PREFIX}/include/js/
	
.include <bsd.port.mk>
