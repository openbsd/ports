COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.32
CATEGORIES=	devel
MASTER_SITES=	https://gstreamer.freedesktop.org/src/orc/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	orc-0.4		7.1 \
		orc-test-0.4	6.1

HOMEPAGE=	https://gstreamer.freedesktop.org/modules/orc.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

BUILD_DEPENDS+=	textproc/gtk-doc

MODULES=	devel/meson

CONFIGURE_ARGS+=-Ddefault_library=both

.include <bsd.port.mk>
