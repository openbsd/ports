COMMENT=		shared mime database for desktops

V=			2.2
DISTNAME=		shared-mime-info-${V}

CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c glib-2.0 xml2

MASTER_SITES=		https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/${V}/

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/xmlto

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

# XXX needs https://gitlab.freedesktop.org/xdg/xdgmime sources for tests
CONFIGURE_ARGS +=	-Dxdgmime-path=${WRKSRC}/xdgmime

pre-configure:
	sed -i 's|/usr/local|${PREFIX}|g' ${WRKSRC}/src/update-mime-database.c
	${SUBST_CMD} ${WRKSRC}/data/freedesktop.org.xml.in

.include <bsd.port.mk>
