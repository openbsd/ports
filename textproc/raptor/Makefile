# $OpenBSD: Makefile,v 1.7 2012/11/12 13:32:38 sthen Exp $

SHARED_LIBS +=	raptor2              0.0      # 0.0

COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor2-2.0.8
PKGNAME=		${DISTNAME:C/raptor2/raptor/}
CATEGORIES=		textproc

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto idn m ssl z curl>=12 xml2>=7 xslt>=1 yajl

MODULES=		devel/gettext

USE_LIBTOOL=		Yes
USE_GROFF=		Yes

LIB_DEPENDS=		devel/libyajl \
			net/curl \
			textproc/libxml \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-parsers=all \
			--with-www=curl

.include <bsd.port.mk>
