COMMENT=		shared mime database for desktops

V=			2.4
DISTNAME=		shared-mime-info-${V}
REVISION=		0

CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge() and unveil()
WANTLIB += ${COMPILER_LIBCXX} c glib-2.0 xml2

# C++17
COMPILER=		base-clang ports-gcc

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc=	-lstdc++fs
LDFLAGS+=		${EXTRA_${CHOSEN_COMPILER}}

SITES=			https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/${V}/

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/xmlto

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

# XXX needs https://gitlab.freedesktop.org/xdg/xdgmime sources for tests
CONFIGURE_ARGS +=	-Dxdgmime-path=${WRKSRC}/xdgmime
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS}"

pre-configure:
	sed -i 's|/usr/local|${PREFIX}|g' ${WRKSRC}/src/update-mime-database.cpp
	${SUBST_CMD} ${WRKSRC}/data/freedesktop.org.xml.in

.include <bsd.port.mk>
