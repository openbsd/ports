# $OpenBSD: Makefile,v 1.13 2015/06/28 05:47:02 ajacoutot Exp $


COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor2-2.0.15
PKGNAME=		${DISTNAME:C/raptor2/raptor/}
CATEGORIES=		textproc

SHARED_LIBS +=  raptor2              0.0      # 0.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl idn lzma m pthread ssl xml2 xslt yajl
WANTLIB += z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/libyajl \
			net/curl \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-parsers=all \
			--with-www=curl

.include <bsd.port.mk>
