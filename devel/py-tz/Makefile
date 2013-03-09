# $OpenBSD: Makefile,v 1.24 2013/03/09 14:28:16 sthen Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2012j
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =   		devel

HOMEPAGE =		http://pytz.sourceforge.net/
MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pytz/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

do-regress: fake
	cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
