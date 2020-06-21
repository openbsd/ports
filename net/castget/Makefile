# $OpenBSD: Makefile,v 1.26 2020/06/21 15:57:16 gsoares Exp $

COMMENT=		command-line podcast downloader

DISTNAME=		castget-2.0.1
CATEGORIES=		net

HOMEPAGE=		https://castget.johndal.com/

MASTER_SITES=          	${MASTER_SITE_SAVANNAH:=castget/}

EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		Caspar Schutijser <caspar@schutijser.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl glib-2.0 iconv id3 intl lzma m nghttp2 pcre pthread
WANTLIB += ssl xml2 z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=            audio/id3lib \
			devel/glib2 \
			net/curl \
			textproc/libxml

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=          CPPFLAGS="-lm -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/castget
	${INSTALL_DATA} ${WRKSRC}/castgetrc.example \
		${PREFIX}/share/examples/castget

.include <bsd.port.mk>
