# $OpenBSD: Makefile,v 1.36 2010/01/18 09:27:00 sthen Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.28.0
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}p1

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

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--without-libgtop-smp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"

post-extract:
	cp ${FILESDIR}/procaffinity.c ${WRKSRC}/sysdeps/bsd/

post-install:
	@chgrp kmem ${PREFIX}/bin/libgtop_server2
	@chmod 2555 ${PREFIX}/bin/libgtop_server2

.include <bsd.port.mk>
