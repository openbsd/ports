# $OpenBSD: Makefile,v 1.3 2006/06/03 09:49:35 alek Exp $

COMMENT=	"enhanced wiki and bug tracking system for software projects"

DISTNAME=	trac-0.9.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www devel

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

HOMEPAGE=	http://projects.edgewall.com/trac/

MASTER_SITES=	ftp://ftp.edgewall.com/pub/trac/ \
		http://ftp.edgewall.com/pub/trac/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	lang/python

RUN_DEPENDS=	::databases/py-sqlite \
		::devel/subversion,-python \
		::textproc/py-docutils \
		::www/clearsilver,python
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_REGRESS=	Yes

post-install:
	@perl -pi -e 's#${WRKINST}##' ${WRKSRC}/trac/siteconfig.py
	@${INSTALL_SCRIPT} ${WRKSRC}/trac/siteconfig.py \
 	   ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/trac/

.include <bsd.port.mk>
