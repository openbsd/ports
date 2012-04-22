# $OpenBSD: Makefile,v 1.38 2012/04/22 11:41:55 ajacoutot Exp $

COMMENT=	wiki and bug tracking system for software projects

MODPY_EGG_VERSION=0.12.3
REVISION=	1
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

RUN_DEPENDS=	databases/py-sqlite2 \
		devel/py-babel \
		devel/subversion,-python \
		textproc/py-docutils \
		textproc/py-pygments \
		www/py-genshi>=0.6

BUILD_DEPENDS=	devel/py-babel \
		www/py-genshi>=0.6

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
