COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.42
CATEGORIES=	devel
SITES=		https://gstreamer.freedesktop.org/src/orc/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	orc-0.4		8.0 \
		orc-test-0.4	6.2

HOMEPAGE=	https://gstreamer.freedesktop.org/modules/orc.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	devel/meson

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Dhotdoc=disabled

.include <bsd.port.mk>
