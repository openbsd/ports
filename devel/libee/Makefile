# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:09 espie Exp $

COMMENT =	event expression library
DISTNAME =	libee-0.4.1
SHARED_LIBS +=  ee                   0.1      # 0.1
CATEGORIES =	devel

HOMEPAGE =	http://www.libee.org/
MAINTAINER =	David Hill <dhill@mindcry.org>

# LGPLv2.1 
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c estr

MASTER_SITES =	${HOMEPAGE}/files/download/

TEST_FLAGS =		CFLAGS+=-I${LOCALBASE}/include
USE_LIBTOOL =		Yes

LIB_DEPENDS =		devel/libestr

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
