# $OpenBSD: Makefile,v 1.11 2000/04/09 17:38:38 espie Exp $
#
# From: $NetBSD: Makefile,v 1.13 1998/08/04 13:09:21 fvdl Exp $
#	but modified to use lesstif 0.86.0...

BROKEN=		"extremely old, needs updating"

DISTNAME=	mozilla-19980728
CATEGORIES=	www
NEED_VERSION=	 1.230
FAKE=No

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/source/ \
	ftp://sunsite.org.uk/Mirrors/ftp.mozilla.org/pub/mozilla/source/ \
	ftp://mirror.aarnet.edu.au/pub/mozilla/mozilla/source/

LIB_DEPENDS=	Xm.1.::x11/lesstif

USE_X11=	Yes
USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/mozilla

RELEASE!=	uname -r
MOZ_OBJDIR=	${OPSYS}${RELEASE}_OPT.OBJ
MOZ_LIBDIR=	${PREFIX}/lib/mozilla

MAKE_ENV+=	NO_SECURITY=1 MOZ_MEDIUM=1 MOZILLA_CLIENT=1 NO_MDUPDATE=1
MAKE_ENV+=	LIBRUNPATH=${MOZ_LIBDIR}
#comment out for debugging
MAKE_ENV+=	BUILD_OPT=1

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
