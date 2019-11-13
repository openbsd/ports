# $OpenBSD: Makefile,v 1.146 2019/11/13 18:33:08 jasper Exp $

# All patches annotated with XXKVM are to prevent any kvm(3) which
# results in an abort() for the caller.

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.40.0
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}
REVISION=		1

SHARED_LIBS=		gtop-2.0	10.0	# .10.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += Xau c ffi glib-2.0 gobject-2.0 iconv intl kvm pcre
WANTLIB += pthread

MODULES=		x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

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

post-extract:
	cp ${FILESDIR}/procio.c ${WRKSRC}/sysdeps/openbsd/

.include <bsd.port.mk>
