# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:13 jasper Exp $

COMMENT =	python bindings for musicbrainz NGS webservice

MODPY_EGG_VERSION = 0.5
DISTNAME =	musicbrainzngs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	http://python-musicbrainzngs.readthedocs.org/

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
