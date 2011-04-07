# $OpenBSD: Makefile,v 1.57 2011/04/07 08:09:35 ajacoutot Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.28.3
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}

REVISION=		0

SHARED_LIBS=		gtop-2.0	9.0	# .9.0

CATEGORIES=		devel

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
	cp ${FILESDIR}/procaffinity.c ${WRKSRC}/sysdeps/bsd/
	cp ${WRKSRC}/sysdeps/{freebsd,bsd}/glibtop_private.h
	cp ${WRKSRC}/sysdeps/{freebsd,bsd}/procwd.c
	cp ${WRKSRC}/sysdeps/{freebsd,bsd}/glibtop_private.c
	cp ${WRKSRC}/sysdeps/{freebsd,bsd}/procopenfiles.c

.include <bsd.port.mk>
