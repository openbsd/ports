# $OpenBSD: Makefile,v 1.18 2009/02/11 15:47:51 jasper Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes-extras
GNOME_VERSION=		2.22.0
PKGNAME=		${DISTNAME}p6
CATEGORIES=		x11

# ${WRKSRC}/icon-themes/Neu/scalable/apps/PaxHeaders.6151/
TAR=			${LOCALBASE}/bin/gtar

# LGPL
# But copyright on several icons sets differ.
# The Gorilla and Lush sets are GPL. Wasp icons are Design Science License.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::archivers/gtar \
			:icon-naming-utils->=0.8.7:x11/icon-naming-utils
RUN_DEPENDS=		:gettext-*:devel/gettext \
			:gtk-engines2->=2.11:x11/gtk-engines2

USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
