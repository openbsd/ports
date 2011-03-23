# $OpenBSD: Makefile,v 1.11 2011/03/23 06:18:30 ajacoutot Exp $

COMMENT=	brain teaser game

DISTNAME=	gbrainy-1.64

CATEGORIES=	games

HOMEPAGE=	http://live.gnome.org/gbrainy

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://gent.softcatala.org/jmas/gbrainy/

MODULES=	textproc/intltool \
		lang/mono \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/mono-addins \
		shells/bash \
		x11/gnome/librsvg \
		x11/gnome/mono-gnome

DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES= Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-tests

DLLMAP_FILES=	src/Clients/Classical/gbrainy.exe.config.in \
		src/Core/gbrainy.Core.dll.config.in

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/src/Clients/Classical/gbrainy.in

.include <bsd.port.mk>
