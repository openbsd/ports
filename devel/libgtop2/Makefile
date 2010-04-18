# $OpenBSD: Makefile,v 1.47 2010/04/18 12:51:44 ajacoutot Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.28.1
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}p8

SHARED_LIBS=		gtop-2.0	9.0	# .9.0

CATEGORIES=		devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		Xau c kvm pcre

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glib-2.0::devel/glib2
RUN_DEPENDS=		::sysutils/lsof

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--without-libgtop-smp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"

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
