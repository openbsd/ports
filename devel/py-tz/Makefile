# $OpenBSD: Makefile,v 1.14 2009/01/15 23:08:52 djm Exp $

COMMENT=		Python API for dealing with timezones

MODPY_EGG_VERSION=	2008i
DISTNAME=		pytz-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
CATEGORIES=    		devel

HOMEPAGE=		http://pytz.sourceforge.net/

MAINTAINER=		Damien Miller <djm@openbsd.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pypi.python.org/packages/source/p/pytz/

MODPY_SETUPTOOLS=	Yes

do-regress: fake
	@cd ${WRKSRC}/pytz/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_tzinfo.py

.include <bsd.port.mk>
