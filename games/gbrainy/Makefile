# $OpenBSD: Makefile,v 1.44 2015/09/07 12:20:47 ajacoutot Exp $

COMMENT=		brain teaser game

DISTNAME=		gbrainy-2.2.6

CATEGORIES=		games

HOMEPAGE=		https://live.gnome.org/gbrainy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://gent.softcatala.org/jmas/gbrainy/
EXTRACT_SUFX=		.tar.gz

MODULES=		lang/mono \
			textproc/intltool \
			x11/gnome

USE_GMAKE=		Yes

BUILD_DEPENDS=		shells/bash \
			x11/gnome/mono-gnome \
			x11/gnome/librsvg

RUN_DEPENDS=		shells/bash \
			x11/gnome/mono-gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-tests

DLLMAP_FILES=		src/Clients/Classical/gbrainy.exe.config.in \
			src/Core/gbrainy.Core.dll.config.in

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/src/Clients/Classical/gbrainy.in

.include <bsd.port.mk>
