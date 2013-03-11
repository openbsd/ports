# $OpenBSD: Makefile,v 1.30 2013/03/11 11:07:39 espie Exp $

COMMENT=	brain teaser game

DISTNAME=	gbrainy-2.1.1
REVISION=	0
EPOCH=		0

CATEGORIES=	games

HOMEPAGE=	http://live.gnome.org/gbrainy

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://gent.softcatala.org/jmas/gbrainy/
EXTRACT_SUFX=	.tar.gz

MODULES=	textproc/intltool \
		lang/mono \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/mono-addins \
		shells/bash \
		x11/gnome/librsvg \
		x11/gnome/mono-gnome

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-tests

DLLMAP_FILES=	src/Clients/Classical/gbrainy.exe.config.in \
		src/Core/gbrainy.Core.dll.config.in

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/src/Clients/Classical/gbrainy.in

.include <bsd.port.mk>
