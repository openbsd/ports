# $OpenBSD: Makefile,v 1.38 2015/02/18 17:58:26 naddy Exp $

COMMENT=		tool for managing library compile/link flags

# note if updating; metaauto is also built from the pkg-config distfile.
IGNORE=			Replaced with BSD clone in OpenBSD 4.1
VERSION=		0.27.1
DISTNAME=		pkg-config-${VERSION}
PKGNAME=		pkgconfig-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		http://pkgconfig.freedesktop.org/releases/

CONFIGURE_ARGS+=	--with-pc_path=${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcre glib-2.0 pthread

MODULES=		devel/gettext

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu
# This pkg-config has just become a reference application. So it's safe to
# depend on glib2 (which does depend on pkg-config. But that's the version
# from base.)
CONFIGURE_ARGS+=	--with-installed-glib

.include <bsd.port.mk>
