# $OpenBSD: Makefile,v 1.101 2013/07/09 12:24:19 sthen Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.28.4
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}
REVISION=		11

SHARED_LIBS=		gtop-2.0	9.0	# .9.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Xau c kvm pcre pthread glib-2.0

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2
RUN_DEPENDS=		sysutils/lsof

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--without-libgtop-smp
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			ac_cv_header_sys_mount_h=yes

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
CPPFLAGS+=		-DDEBUG \
			-DLIBGTOP_ENABLE_DEBUG \
			-DLIBGTOP_FATAL_WARNINGS
.endif

.include <bsd.port.mk>
