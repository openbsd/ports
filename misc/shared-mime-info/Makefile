#
# /!\ this port must build xdgmime at configure time (see pre-configure)
#

COMMENT=		shared mime database for desktops

V=			2.4
DISTNAME=		shared-mime-info-${V}
REVISION=		0

DIST_TUPLE=		fdo xdg xdgmime 5b4d3ce009639a7eb031849c04195d9ae80d25fe xdgmime
XDGMIME_WRKBUILD=	${WRKBUILD}/xdgmime
XDGMIME_WRKSRC=		${WRKSRC}/xdgmime

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

CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CONFIGURE_ARGS=		-Dxdgmime-path=${XDGMIME_WRKBUILD}
.endif

pre-configure:
	sed -i 's|/usr/local|${PREFIX}|g' ${WRKSRC}/src/update-mime-database.cpp
	${SUBST_CMD} ${WRKSRC}/data/freedesktop.org.xml.in

.if ${PROPERTIES:Mclang}
	${INSTALL_DATA_DIR} ${XDGMIME_WRKBUILD}
	cd ${XDGMIME_WRKSRC} && \
		${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/meson setup \
			${MODMESON_CONFIGURE_ARGS} ${XDGMIME_WRKSRC} \
			${XDGMIME_WRKBUILD} && \
		${LOCALBASE}/bin/meson compile -C ${XDGMIME_WRKBUILD} -v -j ${MAKE_JOBS}
.endif

.include <bsd.port.mk>
