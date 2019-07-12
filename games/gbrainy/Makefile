# $OpenBSD: Makefile,v 1.50 2019/07/12 20:46:18 sthen Exp $

BROKEN=	rsvg_handle_get_dimensions: assertion 'RSVG_IS_HANDLE (handle)' failed

COMMENT=		brain teaser game

DISTNAME=		gbrainy-2.2.7
EPOCH=			0
REVISION=		1

CATEGORIES=		games

HOMEPAGE=		https://live.gnome.org/gbrainy

# GPLv2
PERMIT_PACKAGE=	Yes

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
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/src/Clients/Classical/gbrainy.in

.include <bsd.port.mk>
