# $OpenBSD: Makefile,v 1.6 2019/07/12 21:07:45 sthen Exp $

COMMENT =	python bindings for musicbrainz NGS webservice

MODPY_EGG_VERSION = 0.6
REVISION =	1
DISTNAME =	musicbrainzngs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	http://python-musicbrainzngs.readthedocs.org/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
FLAVORS =	python3
FLAVOR ?=

TEST_ENV =	LC_CTYPE=en_US.UTF-8

do-test:
	${MODPY_TEST_TARGET}

.include <bsd.port.mk>
