# $OpenBSD: Makefile,v 1.2 2006/10/27 12:53:01 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"Mozilla's C implementation of JavaScript"

V=		1.5
DISTNAME=	js-${V}
PKGNAME=	spidermonkey-${V}p0
SHARED_LIBS=	js 1.0
CATEGORIES=     lang

HOMEPAGE=	http://www.mozilla.org/js/spidermonkey/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.mozilla.org/pub/mozilla.org/js/ \
		http://ftp.mozilla.org/pub/mozilla.org/js/older-packages/

WANTLIB=	c m pthread readline termcap

WRKDIST=	${WRKDIR}/js
WRKSRC=		${WRKDIST}/src
MAKE_FILE=	Makefile.ref
MAKE_FLAGS=	SO_SUFFIX=so.${LIBjs_VERSION}

CFLAGS+=	-pthread

USE_GMAKE=	Yes
NO_REGRESS=	Yes

HEADERS=	jsapi.h jscompat.h jslong.h jsosdep.h jsotypes.h \
		jspubtd.h jstypes.h jsstr.h jshash.h jsprvtd.h \
		Linux_All_DBG.OBJ/jsautocfg.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Linux_All_DBG.OBJ/js ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Linux_All_DBG.OBJ/libjs.so.${LIBjs_VERSION} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/js
.for i in ${HEADERS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/include/js
.endfor
	
.include <bsd.port.mk>
