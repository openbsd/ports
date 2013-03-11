# $OpenBSD: Makefile,v 1.42 2013/03/11 11:44:50 espie Exp $

COMMENT=	wiki and bug tracking system for software projects

MODPY_EGG_VERSION=1.0.1
DISTNAME=	Trac-${MODPY_EGG_VERSION}
PKGNAME=	trac-${MODPY_EGG_VERSION}
CATEGORIES=	www devel

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://trac.edgewall.org/

MASTER_SITES=	http://ftp.edgewall.com/pub/trac/ \
		ftp://ftp.edgewall.com/pub/trac/

MODPY_SETUPTOOLS=	Yes

# BSD
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	lang/python

COMMON_DEPS=	devel/py-babel>=0.9.6 \
		www/py-genshi>=0.6

RUN_DEPENDS=	${COMMON_DEPS} \
		devel/subversion,-python \
		textproc/py-docutils \
		textproc/py-pygments

BUILD_DEPENDS=	${COMMON_DEPS}

do-test:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
