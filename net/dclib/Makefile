# $OpenBSD: Makefile,v 1.27 2019/07/12 20:48:24 sthen Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
REVISION=	10
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 crypto iconv lzma m pthread ssl ${COMPILER_LIBCXX} xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://spacehopper.org/mirrors/berlios/dcgui/

LIB_DEPENDS=	archivers/bzip2 \
		converters/libiconv \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
