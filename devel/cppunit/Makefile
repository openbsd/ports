# $OpenBSD: Makefile,v 1.1.1.1 2006/06/01 01:36:23 jolan Exp $

COMMENT=	"c++ unit testing framework"
DISTNAME=	cppunit-1.10.2
SHARED_LIBS=	cppunit 2.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
WANTLIB=	c m stdc++

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-doxygen

.include <bsd.port.mk>
