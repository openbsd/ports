# $OpenBSD: Makefile,v 1.12 2015/04/21 18:53:16 sthen Exp $

SHARED_LIBS +=	raptor2              0.0      # 0.0

COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor2-2.0.8
PKGNAME=		${DISTNAME:C/raptor2/raptor/}
CATEGORIES=		textproc
REVISION=		1

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl>=12 idn lzma m pthread ssl xml2>=7 xslt>=1 yajl
WANTLIB += z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/libyajl \
			net/curl \
			textproc/libxml \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-parsers=all \
			--with-www=curl

.include <bsd.port.mk>
