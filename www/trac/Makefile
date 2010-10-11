# $OpenBSD: Makefile,v 1.28 2010/10/11 13:38:11 sthen Exp $

COMMENT=	wiki and bug tracking system for software projects

MODPY_EGG_VERSION=0.12.1
DISTNAME=	Trac-${MODPY_EGG_VERSION}
PKGNAME=	trac-${MODPY_EGG_VERSION}
CATEGORIES=	www devel

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://trac.edgewall.org/

MASTER_SITES=	ftp://ftp.edgewall.com/pub/trac/ \
		http://ftp.edgewall.com/pub/trac/

MODPY_SETUPTOOLS=	Yes

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	lang/python

RUN_DEPENDS=	::databases/py-sqlite2 \
		::devel/subversion,-python \
		::print/enscript \
		::textproc/py-docutils \
		::textproc/py-pygments \
		:clearsilver-*-python:www/clearsilver,python \
		:py-genshi->=0.6:www/py-genshi

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
