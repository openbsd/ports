# $OpenBSD: Makefile,v 1.65 2019/03/25 15:49:22 robert Exp $

COMMENT=		shared mime database for desktops

DISTNAME=		shared-mime-info-1.10
REVISION=		5

CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c glib-2.0 intl xml2

MASTER_SITES=		http://people.freedesktop.org/~hadess/
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
