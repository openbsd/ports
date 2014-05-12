# $OpenBSD: Makefile,v 1.1.1.1 2014/05/12 16:04:13 benoit Exp $

COMMENT =	python bindings for musicbrainz NGS webservice

MODPY_EGG_VERSION = 0.5
DISTNAME =	musicbrainzngs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	http://python-musicbrainzngs.readthedocs.org/

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=/m/musicbrainzngs/}

MODULES =	lang/python

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
