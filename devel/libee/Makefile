# $OpenBSD: Makefile,v 1.7 2014/11/09 09:25:57 benoit Exp $

COMMENT =	event expression library
DISTNAME =	libee-0.4.1
SHARED_LIBS +=  ee                   0.1      # 0.0
CATEGORIES =	devel

REVISION =	0

HOMEPAGE =	http://www.libee.org/
MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c estr

MASTER_SITES =		${HOMEPAGE}/files/download/

TEST_FLAGS =		CFLAGS+=-I${LOCALBASE}/include

LIB_DEPENDS =		devel/libestr

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
