# $OpenBSD: Makefile,v 1.11 2007/08/02 22:36:47 aanriot Exp $

COMMENT=	"wiki and bug tracking system for software projects"

DISTNAME=	trac-0.10.4
PKGNAME=	${DISTNAME}p0
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

MY_DEPENDS=	::databases/py-sqlite \
		::devel/subversion,-python \
		::textproc/py-docutils \
		::www/clearsilver,python

RUN_DEPENDS=	${MY_DEPENDS} \
		::print/enscript

BUILD_DEPENDS=	${MY_DEPENDS}

post-install:
	@perl -pi -e 's#${WRKINST}##' ${WRKSRC}/trac/siteconfig.py
	@${INSTALL_SCRIPT} ${WRKSRC}/trac/siteconfig.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/trac/

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
