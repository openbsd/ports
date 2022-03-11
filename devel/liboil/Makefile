COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.17
REVISION=	4
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

SHARED_LIBS+=	oil-0.3		4.0

HOMEPAGE=	https://liboil.freedesktop.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

AUTOCONF_VERSION= 2.64
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-glib

.include <bsd.port.mk>
