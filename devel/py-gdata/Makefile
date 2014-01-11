# $OpenBSD: Makefile,v 1.19 2014/01/11 17:50:05 ajacoutot Exp $

COMMENT =	Python client library for Google data APIs

MODPY_EGG_VERSION = 2.0.18
DISTNAME =	gdata-${MODPY_EGG_VERSION}
PKGNAME =	py-gdata-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://code.google.com/p/gdata-python-client/
MAINTAINER =	frantisek holop <minusf@obiit.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://gdata-python-client.googlecode.com/files/

MODULES =	lang/python

TEST_IS_INTERACTIVE = Yes

do-test: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./run_data_tests.py

D =	${PREFIX}/share/doc/py-gdata
E =	${PREFIX}/share/examples/py-gdata

post-install:
	${INSTALL_DATA_DIR} $D
	${INSTALL_DATA} ${WRKSRC}/pydocs/*.html $D && \
		chmod o+r $D/*
	${INSTALL_DATA_DIR} $E
	cp -r ${WRKSRC}/samples/* $E && \
		chmod -R o+rx $E

.include <bsd.port.mk>
