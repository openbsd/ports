COMMENT=	general purpose TCP-IP emulator library

VER=		4.7.0
DISTNAME=	libslirp-v${VER}
PKGNAME=	libslirp-${VER}
CATEGORIES=	net
MASTER_SITES=	https://gitlab.freedesktop.org/slirp/libslirp/-/archive/v${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	slirp	0.1

HOMEPAGE=	https://gitlab.freedesktop.org/slirp/libslirp

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	glib-2.0

MODULES=	devel/meson

LIB_DEPENDS+=	devel/glib2

CONFIGURE_ARGS+=-Ddefault_library=both

.include <bsd.port.mk>
