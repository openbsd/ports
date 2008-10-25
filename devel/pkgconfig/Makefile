# $OpenBSD: Makefile,v 1.25 2008/10/25 16:44:56 jasper Exp $

COMMENT=		tool for managing library compile/link flags

IGNORE=			Replaced with BSD clone in OpenBSD 4.1
VERSION=		0.23
DISTNAME=		pkg-config-${VERSION}
PKGNAME=		pkgconfig-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		${HOMEPAGE}/releases/ \
			${MASTER_SITE_GNOME:=sources/pkg-config/0.23/}

CONFIGURE_ARGS+=	--with-pc_path=${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcre
USE_LIBTOOL=		Yes

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0::devel/glib2

CONFIGURE_STYLE=	gnu
# This pkg-config has just become a reference application. So it's safe to depend
# on glib2 (which does depend on pkg-config. But that's the version from base.)
CONFIGURE_ARGS+=	--with-installed-glib

.include <bsd.port.mk>
