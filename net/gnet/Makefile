# $OpenBSD: Makefile,v 1.3 2003/07/25 06:42:05 jolan Exp $

COMMENT=	"simple network library"
DISTNAME=	gnet-2.0.3
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

AUTOCONF_VERSION=2.52
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
	--enable-threadsafe-getaddrinfo --enable-threadsafe-gethostbyname

.include <bsd.port.mk>
