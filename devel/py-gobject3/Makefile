# $OpenBSD: Makefile,v 1.35 2014/05/26 12:24:28 ajacoutot Exp $

COMMENT-main=		Python bindings for GLib and GObject
COMMENT-common=		common files for py-gobject3

GNOME_PROJECT=		pygobject
GNOME_VERSION=		3.12.2
MODPY_EGG_VERSION=	${GNOME_VERSION}

PKGNAME-main=		py-gobject3-${GNOME_VERSION}
FULLPKGNAME-common=	py-gobject3-common-${GNOME_VERSION}
FULLPKGPATH-common=	devel/py-gobject3,-common

SUBST_VARS=		OSREV

CATEGORIES=		devel

HOMEPAGE=		http://www.pygtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xext Xrender cairo expat ffi fontconfig freetype
WANTLIB-main += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main += gthread-2.0 m pcre pixman-1 png pthread pthread-stubs
WANTLIB-main += xcb xcb-render xcb-shm z

WANTLIB-common += #empty

MULTI_PACKAGES=		-main -common

FLAVORS=		python3
FLAVOR?=

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS-common=	#empty
RUN_DEPENDS-common=	#empty

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/gobject-introspection

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/py-gobject3,-common=${GNOME_VERSION}

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main=	${PKGNAME-main:S/^py-/py3-/}
FULLPKGPATH-main=	devel/py-gobject3,-main${MODPY_FLAVOR}
BUILD_DEPENDS +=	graphics/py3-cairo
RUN_DEPENDS-main +=	graphics/py3-cairo
.else
BUILD_DEPENDS +=	graphics/py-cairo
RUN_DEPENDS-main +=	graphics/py-cairo
.endif

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		${BUILD_PKGPATH} \
			devel/pep8 \
			devel/pyflakes

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gi/*.{a,la}

.include <bsd.port.mk>
