# $OpenBSD: Makefile,v 1.4 2007/10/25 15:22:49 jasper Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes-extras
GNOME_VERSION=		2.20
CATEGORIES=		x11

TAR=			${LOCALBASE}/bin/gtar

# LGPL
# But copyright on several icons sets differ.
# The Gorilla and Lush sets are GPL. Wasp icons are Design Science License.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/2.20/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::archivers/gtar \
			:icon-naming-utils-*:x11/icon-naming-utils
RUN_DEPENDS=		:gettext-*:devel/gettext \
			:gtk-engines2->=2.11:x11/gtk-engines2

USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
