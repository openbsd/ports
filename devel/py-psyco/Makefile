# $OpenBSD: Makefile,v 1.8 2007/11/20 04:33:42 fgsch Exp $

COMMENT=	extension module to speed up the execution of Python code

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 

DISTNAME=	psyco-snapshot
PKGNAME=	py-psyco-1.5.2svn
CATEGORIES=	devel

MASTER_SITES=	http://wyvern.cs.uni-duesseldorf.de/psyco/

HOMEPAGE=	http://psyco.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

WRKDIST=	${WRKDIR}/psyco-dist

do-regress: fake
	@cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} ./test_base.py

.include <bsd.port.mk>
