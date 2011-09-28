# $OpenBSD: Makefile,v 1.3 2011/09/28 09:47:47 jasper Exp $

COMMENT=		shared JavaScript files for GNOME

GNOME_PROJECT=		gnome-js-common
GNOME_VERSION=		0.1.2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

FAKE_FLAGS+=		gnome_js_commondoc_DATA=""

.include <bsd.port.mk>
