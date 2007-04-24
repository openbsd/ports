# $OpenBSD: Makefile,v 1.1.1.1 2007/04/24 19:56:15 jasper Exp $

COMMENT=		"themes collection for GNOME"

DISTNAME=		gnome-themes-extras-0.9.0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-themes-extras/0.9/}
EXTRACT_SUFX=           .tar.bz2
TAR=			${LOCALBASE}/bin/gtar

# LGPL
# But copyright on several icons sets differ.
# The Gorilla and Lush sets are GPL. Wasp icons are Design Sciense License.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/gettext \
			:gtk-engines2-*:x11/gtk-engines2 \
			::archivers/gtar
RUN_DEPENDS=		:gtk-engines2-*:x11/gtk-engines2

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
