# $OpenBSD: Makefile,v 1.2 2010/01/12 19:08:23 ajacoutot Exp $

COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor-1.4.18
PKGNAME=		${DISTNAME}p0
CATEGORIES=		textproc

SHARED_LIBS=		raptor	2.0 # .2.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1, GPL 2 or Apache 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto idn m ssl z

MODULES=		devel/gettext

USE_LIBTOOL=		Yes

LIB_DEPENDS=		curl.>=12::net/curl \
			xml2.>=7::textproc/libxml \
			xslt.>=1::textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xml-parser=libxml --with-www=curl

.include <bsd.port.mk>
