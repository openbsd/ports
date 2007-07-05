# $OpenBSD: Makefile,v 1.3 2007/07/05 22:50:11 jasper Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes-extras
GNOME_VERSION=		0.9.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

TAR=			${LOCALBASE}/bin/gtar

# LGPL
# But copyright on several icons sets differ.
# The Gorilla and Lush sets are GPL. Wasp icons are Design Sciense License.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		::devel/gettext \
			:gtk-engines2-*:x11/gtk-engines2 \
			::archivers/gtar
RUN_DEPENDS=		:gtk-engines2-*:x11/gtk-engines2

USE_X11=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
