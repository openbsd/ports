# $OpenBSD: Makefile,v 1.75 2011/06/01 07:24:49 jasper Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.28.3
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}

REVISION=		18

SHARED_LIBS=		gtop-2.0	9.0	# .9.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += Xau c kvm pcre pthread glib-2.0

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/glib2
RUN_DEPENDS=		sysutils/lsof

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--without-libgtop-smp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			ac_cv_header_sys_mount_h=yes

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
CPPFLAGS+=		-DDEBUG \
			-DLIBGTOP_ENABLE_DEBUG \
			-DLIBGTOP_FATAL_WARNINGS
.endif

post-extract:
	cp -r ${FILESDIR} ${WRKSRC}/sysdeps/openbsd/

.include <bsd.port.mk>
