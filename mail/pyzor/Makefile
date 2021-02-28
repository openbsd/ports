# $OpenBSD: Makefile,v 1.15 2021/02/28 13:17:06 sthen Exp $

COMMENT =		collaborative, networked system to detect and block spam

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		pyzor-${MODPY_EGG_VERSION}
CATEGORIES =		mail net

# https://github.com/SpamExperts/pyzor
HOMEPAGE =		http://www.pyzor.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
