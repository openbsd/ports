# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:51 espie Exp $

COMMENT=		RDF Parser Toolkit for Redland
DISTNAME=		raptor-1.4.18
REVISION=		1
CATEGORIES=		textproc

SHARED_LIBS=		raptor	2.0 # .2.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1, GPL 2 or Apache 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto idn m ssl z curl>=12 xml2>=7 xslt>=1

MODULES=		devel/gettext

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

LIB_DEPENDS=		net/curl \
			textproc/libxml \
			textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xml-parser=libxml \
			--with-www=curl

.include <bsd.port.mk>
