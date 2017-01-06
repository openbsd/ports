# $OpenBSD: Makefile,v 1.1.1.1 2017/01/06 15:59:28 ajacoutot Exp $

COMMENT=		ePub files viewer

GH_ACCOUNT=		michaldaniel
GH_PROJECT=		Ebook-Viewer
GH_COMMIT=		dae037a3f5103120486758c85d06d0a990f7592d
DISTNAME=		ebook-viewer-0.0.1

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_BUILDDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# add required introspection libs that are not in the dependency chain
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR} \
			www/webkit,gtk3 \
			x11/gtk+3

CONFIGURE_STYLE=	None # overrides python do-configure

MAKE_FLAGS=		PREFIX=${PREFIX} \
			PYTHON=${MODPY_BIN}
FAKE_FLAGS=		PREFIX=${WRKINST}${TRUEPREFIX}

NO_TEST=		Yes

pre-configure:
	ln -sf /usr/bin/true ${WRKDIR}/bin/update-icon-caches

.include <bsd.port.mk>
