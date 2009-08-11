# $OpenBSD: Makefile,v 1.16 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=	X11 Cursors themes generator
DIST_VERS=	1.0.2
XORG_VERS=	7.3
DISTNAME=	xcursorgen-${DIST_VERS}
PKGNAME=	xcursorgen-${XORG_VERS}p0
CATEGORIES=	x11

HOMEPAGE=	http://wiki.X.Org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS=	png.>=2::graphics/png

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.x.org/pub/X11R${XORG_VERS}/src/app/ \
		ftp://x.mirrors.skynet.be/pub/ftp.x.org/pub/X11R${XORG_VERS}/src/app/

WANTLIB=		Xrender Xcursor X11 Xfixes Xdmcp Xau c m z \
			pthread-stubs xcb

SEPARATE_BUILD= 	concurrent
USE_X11=		Yes
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ENV= 		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			ACLOCAL="aclocal -I ${X11BASE}/share/aclocal" \
MAKE_FLAGS+= 		AUTOCONF_VERSION=${AUTOCONF_VERSION}

NO_REGRESS=		Yes

.include <bsd.port.mk>
