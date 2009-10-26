# $OpenBSD: Makefile,v 1.8 2009/10/26 11:37:51 sthen Exp $

COMMENT=	Python client library for Google data APIs

MODPY_EGG_VERSION=2.0.4
DISTNAME=	gdata-${MODPY_EGG_VERSION}
PKGNAME=	py-gdata-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://code.google.com/p/gdata-python-client/
MAINTAINER=	frantisek holop <minusf@obiit.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://gdata-python-client.googlecode.com/files/

MODULES=	lang/python

REGRESS_IS_INTERACTIVE=	Yes

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./run_data_tests.py

D=	${PREFIX}/share/doc/py-gdata
E=	${PREFIX}/share/examples/py-gdata

post-install:
	${INSTALL_DATA_DIR} $D
	${INSTALL_DATA} ${WRKSRC}/pydocs/*.html $D && \
		${CHMOD} o+r $D/*
	${INSTALL_DATA_DIR} $E
	cp -r ${WRKSRC}/samples/* $E && \
		${CHMOD} -R o+rx $E

.include <bsd.port.mk>
