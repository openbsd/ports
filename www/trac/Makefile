# $OpenBSD: Makefile,v 1.20 2009/04/25 12:54:57 ajacoutot Exp $

COMMENT=	wiki and bug tracking system for software projects

MODPY_EGG_VERSION=0.10.5
DISTNAME=	trac-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www devel

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

HOMEPAGE=	http://trac.edgewall.org/

MASTER_SITES=	ftp://ftp.edgewall.com/pub/trac/ \
		http://ftp.edgewall.com/pub/trac/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	lang/python

RUN_DEPENDS=	::databases/py-sqlite2 \
		::devel/subversion,-python \
		::textproc/py-docutils \
		:clearsilver-*-python:www/clearsilver,python \
		::print/enscript

post-install:
	@perl -pi -e 's#${WRKINST}##' ${WRKSRC}/trac/siteconfig.py
	@${INSTALL_SCRIPT} ${WRKSRC}/trac/siteconfig.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/trac/

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
