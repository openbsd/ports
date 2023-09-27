COMMENT=	import and export WordPerfect(tm) documents

DISTNAME=	libwpd-0.10.3
CATEGORIES=	textproc

SHARED_LIBS=	wpd-0.10	10.0

HOMEPAGE=	http://libwpd.sourceforge.net/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_SOURCEFORGE:=libwpd/}

WANTLIB += ${COMPILER_LIBCXX} c m z
WANTLIB += revenge-0.0 revenge-generators-0.0
WANTLIB += revenge-stream-0.0

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	textproc/librevenge

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-docs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
