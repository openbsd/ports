COMMENT=		shared mime database for desktops

DISTNAME=		shared-mime-info-2.1
REVISION=		1

CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c glib-2.0 xml2

MASTER_SITES=		https://gitlab.freedesktop.org/xdg/shared-mime-info/uploads/0ee50652091363ab0d17e335e5e74fbe/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/xmlto

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

# XXX needs https://gitlab.freedesktop.org/xdg/xdgmime sources for tests
CONFIGURE_ARGS +=	-Dxdgmime-path=${WRKSRC}/xdgmime

pre-configure:
	sed -i 's|/usr/local|${PREFIX}|g' ${WRKSRC}/src/update-mime-database.c

.include <bsd.port.mk>
