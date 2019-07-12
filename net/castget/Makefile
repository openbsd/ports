# $OpenBSD: Makefile,v 1.25 2019/07/12 20:48:23 sthen Exp $

COMMENT=		command-line podcast downloader

DISTNAME=		castget-1.0.1
REVISION=		11
SHARED_LIBS +=	castget              0.0      # .0.0
CATEGORIES=		net

HOMEPAGE=		http://www.nongnu.org/castget

MASTER_SITES=          	${MASTER_SITE_SAVANNAH:=castget/}

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

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
