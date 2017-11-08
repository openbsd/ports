# $OpenBSD: Makefile,v 1.29 2017/11/08 10:04:53 ajacoutot Exp $

COMMENT-main=		implementation of the iCalendar protocols and data units
COMMENT-glib=		GObject wrapper for libical library

GH_ACCOUNT=		libical
GH_PROJECT=		libical
GH_TAGNAME=		v3.0.0

PKGNAME-main=		${PKGNAME}
PKGNAME-glib=		${GH_PROJECT}-glib-${GH_TAGNAME:C/^v//}

REVISION-main=		2
REVISION-glib=		1

SHARED_LIBS +=  ical                 4.0
SHARED_LIBS +=  icalss               4.0
SHARED_LIBS +=  icalvcal             3.0
SHARED_LIBS +=  ical_cxx             1.0
SHARED_LIBS +=  icalss_cxx           1.0
SHARED_LIBS +=  ical-glib            0.0

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://libical.github.io/libical/

# dual MPLv2, LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icui18n icuuc
WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX} m lib/db4/db
WANTLIB-glib += ${WANTLIB} ical glib-2.0 gobject-2.0 intl pthread

MULTI_PACKAGES=		-main -glib

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala \
			textproc/gtk-doc

LIB_DEPENDS-main=	databases/db/v4 \
			textproc/icu4c

LIB_DEPENDS-glib=	devel/glib2 \
			${BASE_PKGPATH},-main


CONFIGURE_ARGS=		-DGOBJECT_INTROSPECTION=true \
			-DICAL_GLIB_VAPI=true

CFLAGS +=		-I${LOCALBASE}/include

# needed for libical-glib tests
MODULES +=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No
TEST_DEPENDS=		${MODPY_RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindBDB.cmake

.include <bsd.port.mk>
