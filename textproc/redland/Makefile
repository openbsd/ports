# $OpenBSD: Makefile,v 1.1.1.1 2009/01/18 19:05:35 robert Exp $

COMMENT=		A high-level interface for RDF
DISTNAME=		redland-1.0.8
CATEGORIES=		textproc

SHARED_LIBS=		rasqal	1.0 \
			rdf	0.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1, GPL 2 or Apache 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c crypto curl iconv idn intl m ssl xml2 xslt z

LIB_DEPENDS=	raptor.>=2::textproc/raptor

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

CONFIGURE_ARGS=	--with-raptor=system \
		--with-rasqal=internal \
		--with-threestore=no \
		--with-sqlite=no \
		--with-mysql=no \
		--with-postgresql=no

.include <bsd.port.mk>
