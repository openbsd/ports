# $OpenBSD: Makefile,v 1.9 2013/07/07 09:12:30 espie Exp $

COMMENT=	c++ unit testing framework
DISTNAME=	cppunit-1.12.1
SHARED_LIBS +=	cppunit              3.0      # .1.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}

# no namespace -> construct CPPUNIT_NS::foo turns into ::foo, doesn't 
# make sense in the middle of a class.
NOT_FOR_ARCHS =	${GCC2_ARCHES}

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
USE_GROFF =		Yes
WANTLIB=		c m stdc++

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
