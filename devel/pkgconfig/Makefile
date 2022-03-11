COMMENT=		tool for managing library compile/link flags

# note if updating; metaauto is also built from the pkg-config distfile.
IGNORE=			Replaced with BSD clone in OpenBSD 4.1
VERSION=		0.29.2
DISTNAME=		pkg-config-${VERSION}
PKGNAME=		pkgconfig-${VERSION}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		https://pkgconfig.freedesktop.org/releases/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=  c glib-2.0 iconv intl pcre pthread

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-host-tool \
			--with-pc_path=${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig

# This pkg-config has just become a reference application. So it's safe to
# depend on glib2 (which does depend on pkg-config. But that's the version
# from base.)
CONFIGURE_ARGS+=	--with-installed-glib

.include <bsd.port.mk>
