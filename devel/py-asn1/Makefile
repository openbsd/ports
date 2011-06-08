# $OpenBSD: Makefile,v 1.13 2011/06/08 17:39:24 jasper Exp $

COMMENT =	ASN.1 library for Python

MODPY_EGG_VERSION =	0.0.13b
DISTNAME =		pyasn1-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*
REVISION =	0

HOMEPAGE =		http://pyasn1.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD-style
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyasn1/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

DOCSDIR =	${PREFIX}/share/doc/py-asn1

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./suite.py

.include <bsd.port.mk>
