COMMENT=	high-level API for encoding .opus files

DISTNAME=	libopusenc-0.3
SHARED_LIBS=	opusenc		0.0	# 4.3
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m opus

SITES=		https://downloads.xiph.org/releases/opus/

LIB_DEPENDS=	audio/opus

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-maintainer-mode	# avoid autotools cascade
CONFIGURE_ARGS+=--disable-doc			# requires doxygen

.include <bsd.port.mk>
