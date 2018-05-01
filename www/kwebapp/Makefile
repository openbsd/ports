# $OpenBSD: Makefile,v 1.2 2018/05/01 12:53:30 abieber Exp $

COMMENT =		web application source generator

DISTNAME =		kwebapp-0.4.8
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kwebapp/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://kristaps.bsd.lv/kwebapp/snapshots/

RUN_DEPENDS =		databases/ksql \
			www/kcgi
TEST_DEPENDS =		${RUN_DEPENDS}

ALL_TARGET =		kwebapp
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		"PREFIX=${PREFIX}"

.include <bsd.port.mk>
