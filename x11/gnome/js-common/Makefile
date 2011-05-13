# $OpenBSD: Makefile,v 1.1.1.1 2011/05/13 08:16:28 jasper Exp $

COMMENT=		shared JavaScript files for GNOME

GNOME_PROJECT=		gnome-js-common
GNOME_VERSION=		0.1.2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		gnome_js_commondoc_DATA=""

.include <bsd.port.mk>
