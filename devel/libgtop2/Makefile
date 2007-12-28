# $OpenBSD: Makefile,v 1.29 2007/12/28 14:31:52 jasper Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.14.6
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}p3
SHARED_LIBS=		gtop-2.0	7.0	# .7.0

CATEGORIES=		devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xau c kvm pcre

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			popt::devel/popt

USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"

post-install:
	@chgrp kmem ${PREFIX}/bin/libgtop_server2
	@chmod 2555 ${PREFIX}/bin/libgtop_server2

.include <bsd.port.mk>
