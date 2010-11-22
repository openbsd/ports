# $OpenBSD: Makefile,v 1.23 2010/11/22 08:36:58 espie Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes-extras
GNOME_VERSION=		2.22.0
REVISION=		8

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
			archivers/gtar \
			x11/icon-naming-utils>=0.8.90
RUN_DEPENDS=		devel/gettext \
			x11/gtk-engines2>=2.11

USE_LIBTOOL=		No
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
