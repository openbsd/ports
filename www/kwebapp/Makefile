# $OpenBSD: Makefile,v 1.6 2018/12/16 01:11:22 abieber Exp $

COMMENT =		web application source generator

DISTNAME =		kwebapp-0.6.9
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

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		"PREFIX=${PREFIX}"

NO_TEST =		Yes

.include <bsd.port.mk>
