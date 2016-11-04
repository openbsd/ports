# $OpenBSD: Makefile,v 1.15 2016/11/04 11:35:20 sthen Exp $


COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor2-2.0.15
PKGNAME=		${DISTNAME:C/raptor2/raptor/}
CATEGORIES=		textproc
REVISION=		1

SHARED_LIBS +=  raptor2              0.0      # 0.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl lzma m nghttp2 pthread ssl xml2 xslt yajl z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/libyajl \
			net/curl \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-parsers=all \
			--with-www=curl

.include <bsd.port.mk>
