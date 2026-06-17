COMMENT-main=		implementation of the iCalendar protocols and data units
COMMENT-glib=		GObject wrapper for libical library

V=			4.0.3
DISTNAME=		libical-${V}

PKGNAME-main=		${PKGNAME}
PKGNAME-glib=		libical-glib-${V}

SHARED_LIBS +=  ical                 5.0
SHARED_LIBS +=  icalss               5.0
SHARED_LIBS +=  icalvcal             4.0
SHARED_LIBS +=  ical_cxx             2.0
SHARED_LIBS +=  icalss_cxx           2.0
SHARED_LIBS +=  ical-glib            1.0
SHARED_LIBS +=	icalvcard            0.0

CATEGORIES=		textproc

HOMEPAGE=		https://libical.github.io/libical/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# dual MPLv2, LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += icui18n icudata icuuc
WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX} m lib/db4/db lib/db4/db_cxx
WANTLIB-glib += ${WANTLIB} c ical icalvcard glib-2.0 gobject-2.0 intl
WANTLIB-glib += pthread xml2

SITES=			https://github.com/libical/libical/releases/download/v${V}/

MULTI_PACKAGES=		-main -glib

MODULES=		devel/cmake

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala \
			textproc/libxml

LIB_DEPENDS-main=	databases/db/v4 \
			textproc/icu4c

LIB_DEPENDS-glib=	devel/glib2 \
			textproc/libxml \
			${BASE_PKGPATH},-main=${V}


CONFIGURE_ARGS=		-DLIBICAL_GOBJECT_INTROSPECTION=true \
			-DLIBICAL_GLIB_VAPI=true \
			-DLIBICAL_BUILD_DOCS=false \
			-DLIBICAL_BUILD_DOCS=false \
			-DLIBICAL_JAVA_BINDINGS=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CFLAGS +=		-I${LOCALBASE}/include

# needed for libical-glib tests
MODULES +=		lang/python
MODPY_RUNDEP=		No
TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			textproc/libical,-glib=${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindBDB.cmake

.include <bsd.port.mk>
