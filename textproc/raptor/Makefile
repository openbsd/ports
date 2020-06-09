# $OpenBSD: Makefile,v 1.18 2020/06/09 07:14:45 jasper Exp $


COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor2-2.0.15
PKGNAME=		${DISTNAME:C/raptor2/raptor/}
CATEGORIES=		textproc
REVISION=		3

SHARED_LIBS +=  raptor2              0.0      # 0.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

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
