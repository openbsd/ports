# $OpenBSD: Makefile,v 1.13 2000/10/22 15:43:40 espie Exp $
#
# From: $NetBSD: Makefile,v 1.13 1998/08/04 13:09:21 fvdl Exp $
#	but modified to use lesstif 0.86.0...

DISTNAME=	mozilla
M=		17
PKGNAME=	mozilla-$M
DISTFILES=	mozilla-source-M$M.tar.bz2

BROKEN=		core dumps in dynamic library constructor

CATEGORIES=	www
NEED_VERSION=	1.324

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/m$M/src/ \
	ftp://sunsite.org.uk/Mirrors/ftp.mozilla.org/pub/mozilla/source/ \
	ftp://mirror.aarnet.edu.au/pub/mozilla/mozilla/source/

LIB_DEPENDS=	Xm.1.::x11/lesstif \
		IDL.4::devel/ORBit

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu	autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/moz-export ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/mozilla-export ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/moz-export ${PREFIX}/bin/mozilla
	mkdir -p ${MOZ_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/dist/${MOZ_OBJDIR}/bin/*.so* ${MOZ_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/dist/${MOZ_OBJDIR}/lib/*.so* ${MOZ_LIBDIR}

.include <bsd.port.mk>
