# $OpenBSD: Makefile,v 1.3 2010/07/26 09:45:37 kevlo Exp $

COMMENT=	brain teaser game

DISTNAME=	gbrainy-1.42

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
		lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		::devel/mono-addins \
		::shells/bash \
		:gnome-doc-utils-*:x11/gnome/doc-utils \
		::x11/gnome/librsvg \
		::x11/gnome/mono-gnome \
		::x11/gnome/yelp

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	src/Clients/Classical/gbrainy.exe.config.in \
		src/Core/gbrainy.Core.dll.config.in

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/src/Clients/Classical/gbrainy.in

.include <bsd.port.mk>
