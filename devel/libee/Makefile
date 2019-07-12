# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:38 sthen Exp $

COMMENT =	event expression library
DISTNAME =	libee-0.4.1
SHARED_LIBS +=  ee                   0.1      # 0.0
CATEGORIES =	devel

REVISION =	1

HOMEPAGE =	http://www.libee.org/
MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += c estr m

MASTER_SITES =		${HOMEPAGE}/files/download/

TEST_FLAGS =		CFLAGS+=-I${LOCALBASE}/include

LIB_DEPENDS =		devel/libestr

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
