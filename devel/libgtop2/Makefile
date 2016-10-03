# $OpenBSD: Makefile,v 1.136 2016/10/03 12:11:29 dlg Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.34.1
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}
REVISION=		0

SHARED_LIBS=		gtop-2.0	10.0	# .10.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Xau c ffi glib-2.0 gobject-2.0 iconv intl kvm pcre
WANTLIB += pthread

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			ac_cv_header_sys_mount_h=yes

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
CPPFLAGS+=		-DDEBUG \
			-DLIBGTOP_ENABLE_DEBUG \
			-DLIBGTOP_FATAL_WARNINGS
.endif

.include <bsd.port.mk>
