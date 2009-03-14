# $OpenBSD: Makefile,v 1.7 2009/03/14 23:13:34 espie Exp $

COMMENT=	Google utilities written in Python

DISTNAME=	goopy-0.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	devel
HOMEPAGE=	http://goog-goopy.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=goog-goopy/}

MODULES=	lang/python

do-regress: fake
	@cd ${WRKSRC}/goopy && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./functional_unittest.py

.include <bsd.port.mk>
