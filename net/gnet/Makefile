# $OpenBSD: Makefile,v 1.2 2003/07/07 21:03:09 pvalchev Exp $

COMMENT=	"simple network library"
DISTNAME=	gnet-1.1.9
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}src/

HOMEPAGE=	http://www.gnetlibrary.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	gettext

BUILD_DEPENDS=	:pkgconfig->=0.9.0:devel/pkgconfig

LIB_DEPENDS=	glib-2.0.0.0,gthread-2.0.0.0::devel/glib2

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=     gcc-* patch-*
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-glib2 --enable-threadsafe-gethostbyname
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

.include <bsd.port.mk>
