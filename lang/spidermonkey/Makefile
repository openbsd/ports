# $OpenBSD: Makefile,v 1.7 2007/09/09 22:23:35 jakemsr Exp $

SHARED_ONLY=	Yes

COMMENT=	"Mozilla's C implementation of JavaScript"

V=		1.60
DISTNAME=	js-${V}
PKGNAME=	spidermonkey-${V}p2
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

HEADERS=	jsapi.h jscompat.h jslong.h jsosdep.h jsotypes.h \
		jspubtd.h jstypes.h jsstr.h jshash.h jsprvtd.h \
		Linux_All_DBG.OBJ/jsautocfg.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Linux_All_DBG.OBJ/js ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Linux_All_DBG.OBJ/libjs.so.${LIBjs_VERSION} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/js
	@cd ${WRKSRC} && \
		${INSTALL_DATA} ${HEADERS} ${PREFIX}/include/js/
	
.include <bsd.port.mk>
