# $OpenBSD: Makefile,v 1.10 2013/08/07 16:38:53 naddy Exp $

COMMENT=	c++ unit testing framework
DISTNAME=	cppunit-1.12.1
SHARED_LIBS +=	cppunit              3.0      # .1.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
USE_GROFF =		Yes
WANTLIB=		c m stdc++

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
