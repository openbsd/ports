COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor2-2.0.16
PKGNAME=		${DISTNAME:C/raptor2/raptor/}
CATEGORIES=		textproc

SHARED_LIBS +=  raptor2              0.1      # 0.0

HOMEPAGE=		https://librdf.org/

MASTER_SITES=		https://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curl iconv intl lzma m nghttp2 pthread ssl xml2 xslt
WANTLIB += yajl z

LIB_DEPENDS=		devel/libyajl \
			net/curl \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-parsers=all \
			--with-www=curl

.include <bsd.port.mk>
