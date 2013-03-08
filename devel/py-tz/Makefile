# $OpenBSD: Makefile,v 1.23 2013/03/08 09:13:36 jasper Exp $

COMMENT=		Python API for dealing with timezones

MODPY_EGG_VERSION=	2012c
DISTNAME=		pytz-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
REVISION=		2
CATEGORIES=    		devel

HOMEPAGE=		http://pytz.sourceforge.net/

MAINTAINER =		frantisek holop <minusf@obiit.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pytz/}

MODPY_SETUPTOOLS=	Yes

do-regress: fake
	@cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
