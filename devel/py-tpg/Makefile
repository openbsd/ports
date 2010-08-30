# $OpenBSD: Makefile,v 1.14 2010/08/30 22:24:16 jasper Exp $

COMMENT=	parser generator in Python

DISTNAME=	TPG-3.1.0
PKGNAME=	py-${DISTNAME:L}
REVISION =	2
CATEGORIES=	devel

HOMEPAGE=	http://christophe.delord.free.fr/en/tpg/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://christophe.delord.free.fr/soft/tpg/

MODULES=	lang/python

DOCDIR=		${PREFIX}/share/doc/py-tpg
EXAMPLESDIR=	${PREFIX}/share/examples/py-tpg

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

do-regress:
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./tpg_tests.py

.include <bsd.port.mk>
