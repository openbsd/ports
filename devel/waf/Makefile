# $OpenBSD: Makefile,v 1.4 2009/01/26 19:47:12 landry Exp $

COMMENT=	Python-based build system

DISTNAME=	waf-1.5.2
CATEGORIES=	devel
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://code.google.com/p/waf/
MASTER_SITES=	http://waf.googlecode.com/files/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

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
