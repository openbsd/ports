# $OpenBSD: Makefile,v 1.41 2013/02/03 14:27:25 sthen Exp $

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
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	lang/python

COMMON_DEPS=	devel/py-babel>=0.9.6 \
		www/py-genshi>=0.6

RUN_DEPENDS=	${COMMON_DEPS} \
		devel/subversion,-python \
		textproc/py-docutils \
		textproc/py-pygments

BUILD_DEPENDS=	${COMMON_DEPS}

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
