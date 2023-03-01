COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.41.1
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}

SHARED_LIBS=		gtop-2.0	10.1	# .10.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += Xau c ffi glib-2.0 gobject-2.0 iconv intl kvm pcre2-8
WANTLIB += pthread

MODULES=		x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

post-extract:
	cp ${WRKSRC}/sysdeps/{freebsd,openbsd}/procio.c

.include <bsd.port.mk>
