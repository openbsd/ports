# $OpenBSD: Makefile,v 1.17 2001/06/22 16:32:51 fgsch Exp $
#
# From: $NetBSD: Makefile,v 1.13 1998/08/04 13:09:21 fvdl Exp $
#	but modified to use lesstif 0.86.0...

COMMENT=	"free version of the Netscape browser"

VER=		0.9.1
DISTNAME=	mozilla
PKGNAME=	mozilla-${VER}
DISTFILES=	mozilla-source-${VER}.tar.bz2

BROKEN=		core dumps in dynamic library constructor

CATEGORIES=	www
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/mozilla${VER}/src/

LIB_DEPENDS=	IDL.4::devel/ORBit

USE_X11=	Yes
USE_GMAKE=	Yes
USE_MOTIF=	any

CONFIGURE_STYLE=	gnu	autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/moz-export ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/mozilla-export ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/moz-export ${PREFIX}/bin/mozilla
	mkdir -p ${MOZ_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/*.so* ${MOZ_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/dist/${MOZ_OBJDIR}/lib/*.so* ${MOZ_LIBDIR}

.include <bsd.port.mk>
