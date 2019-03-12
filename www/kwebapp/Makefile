# $OpenBSD: Makefile,v 1.7 2019/03/12 15:27:38 gonzalo Exp $

COMMENT =		web application source generator

DISTNAME =		kwebapp-0.6.13
CATEGORIES =		www

HOMEPAGE =		https://kristaps.bsd.lv/kwebapp/

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
