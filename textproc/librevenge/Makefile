COMMENT=	base library for writing document import filters

DISTNAME=	librevenge-0.0.5
CATEGORIES=	textproc

SHARED_LIBS=	revenge-0.0		0.0 \
		revenge-generators-0.0	0.0 \
		revenge-stream-0.0	0.0

HOMEPAGE=	http://libwpd.sourceforge.net/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_SOURCEFORGE:=libwpd/}

BUILD_DEPENDS=	devel/boost \
		devel/cppunit

WANTLIB += ${COMPILER_LIBCXX} m z

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--without-docs
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=		Yes

.include <bsd.port.mk>
