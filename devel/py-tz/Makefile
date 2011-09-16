# $OpenBSD: Makefile,v 1.20 2011/09/16 09:24:56 espie Exp $

COMMENT=		Python API for dealing with timezones

MODPY_EGG_VERSION=	2011h
DISTNAME=		pytz-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
CATEGORIES=    		devel
REVISION=		0

HOMEPAGE=		http://pytz.sourceforge.net/

MAINTAINER=		Damien Miller <djm@openbsd.org>

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
