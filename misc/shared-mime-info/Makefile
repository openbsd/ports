# $OpenBSD: Makefile,v 1.68 2019/11/17 19:38:02 ajacoutot Exp $

COMMENT=		shared mime database for desktops

DISTNAME=		shared-mime-info-1.15

CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c glib-2.0 intl xml2

MASTER_SITES=		https://gitlab.freedesktop.org/xdg/shared-mime-info/uploads/b27eb88e4155d8fccb8bb3cd12025d5b/
EXTRACT_SUFX=		.tar.xz

MODULES=		textproc/intltool

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--disable-update-mimedb

pre-configure:
	sed -i 's|/usr/local|${PREFIX}|g' \
		${WRKSRC}/update-mime-database.c \
		${WRKSRC}/shared-mime-info-spec.xml

.include <bsd.port.mk>
