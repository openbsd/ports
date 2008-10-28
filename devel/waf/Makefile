# $OpenBSD: Makefile,v 1.2 2008/10/28 09:28:24 ajacoutot Exp $

COMMENT=	Python-based build system

DISTNAME=	waf-1.4.4
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

# waf needs bz2 subpackage
RUN_DEPENDS =	::lang/python/${MODPY_VERSION},-bz2
BUILD_DEPENDS =	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/waf ${WRKSRC}/wscript

do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} ${MODPY_BIN} ./waf configure

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf

# waf overrides itself during install, so keep our patched version
pre-install:
	cp ${WRKSRC}/waf{,.mine}

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install --yes --prefix=${PREFIX}

# clean root owned files and overwrite with our patched version
post-install:
	rm -fr ${WRKSRC}/build
	${INSTALL_SCRIPT} ${WRKSRC}/waf.mine ${PREFIX}/bin/waf

.include <bsd.port.mk>
