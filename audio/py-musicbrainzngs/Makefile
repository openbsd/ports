# $OpenBSD: Makefile,v 1.3 2016/04/27 18:14:29 jasper Exp $

COMMENT =	python bindings for musicbrainz NGS webservice

MODPY_EGG_VERSION = 0.6
DISTNAME =	musicbrainzngs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	http://python-musicbrainzngs.readthedocs.org/

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python

do-test:
	${MODPY_TEST_TARGET}

.include <bsd.port.mk>
