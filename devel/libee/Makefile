# $OpenBSD: Makefile,v 1.6 2013/03/21 08:45:15 ajacoutot Exp $

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

LIB_DEPENDS =		devel/libestr

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
