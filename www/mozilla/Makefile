# $OpenBSD: Makefile,v 1.8 2000/03/24 22:12:03 espie Exp $

DISTNAME=	mozilla-source-M14-no-crypto
CATEGORIES=	www
NEED_VERSION=	1.223

HOME_PAGE=	http://www.mozilla.org/
MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/m14/src/ \
	ftp://sunsite.org.uk/Mirrors/ftp.mozilla.org/pub/mozilla/releases/m14 \
	ftp://mirror.aarnet.edu.au/pub/mozilla/releases/m14/

#LIB_DEPENDS=	Xm.1.:x11/lesstif

#USE_X11=	Yes
USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/mozilla

GNU_CONFIGURE=	Yes
RELEASE!=	uname -r
MOZ_OBJDIR=	${OPSYS}${RELEASE}_OPT.OBJ
MOZ_LIBDIR=	${PREFIX}/lib/mozilla

#MAKE_ENV+=	NO_SECURITY=1 MOZ_MEDIUM=1 MOZILLA_CLIENT=1 NO_MDUPDATE=1
#MAKE_ENV+=	LIBRUNPATH=${MOZ_LIBDIR}
#comment out for debugging
#MAKE_ENV+=	BUILD_OPT=1

.if !defined(NO_WARNINGS)
pre-fetch:
	@echo ""
	@echo "*** Please see ${FILESDIR}/README for general caveats"
	@echo ""
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/moz-export ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/mozilla-export ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/moz-export ${PREFIX}/bin/mozilla
	mkdir -p ${MOZ_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/*.so* ${MOZ_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/dist/${MOZ_OBJDIR}/lib/*.so* ${MOZ_LIBDIR}

.include <bsd.port.mk>
