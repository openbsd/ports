# $OpenBSD: Makefile,v 1.12 2013/08/07 21:31:49 naddy Exp $

COMMENT=	Python-based build system

DISTNAME=	waf-1.5.18
CATEGORIES=	devel
REVISION =	2
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://waf.googlecode.com/
MASTER_SITES=	${HOMEPAGE}/files/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

NO_TEST=	Yes

SUBST_VARS=	MODPY_SITEPKG

pre-configure:
	${SUBST_CMD} ${WRKSRC}/waf-light ${WRKSRC}/wscript
	touch ${WRKSRC}/waf

do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} ${MODPY_BIN} ./waf-light configure

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf-light

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf-light install --yes --prefix=${PREFIX}

# clean root owned files and overwrite with our patched version
post-install:
	rm -fr ${WRKSRC}/build
	${INSTALL_SCRIPT} ${WRKSRC}/waf-light ${PREFIX}/bin/waf

.include <bsd.port.mk>
