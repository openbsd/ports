# $OpenBSD: Makefile,v 1.4 2018/08/16 23:56:33 abieber Exp $

COMMENT =		web application source generator

DISTNAME =		kwebapp-0.5.6
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kwebapp/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/kwebapp/snapshots/

RUN_DEPENDS =		databases/ksql \
			www/kcgi
TEST_DEPENDS =		${RUN_DEPENDS}
TEST_FLAGS =		CFLAGS+=-I${LOCALBASE}/include \
			LDFLAGS+=-L${LOCALBASE}/lib

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		"PREFIX=${PREFIX}"

.include <bsd.port.mk>
