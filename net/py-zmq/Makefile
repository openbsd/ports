# $OpenBSD: Makefile,v 1.4 2013/03/08 10:34:18 jasper Exp $

COMMENT =		Python bindings for ZeroMQ

MODPY_EGG_VERSION =	13.0.0
DISTNAME =		pyzmq-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		net devel

HOMEPAGE =		http://github.com/zeromq/pyzmq/

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pyzmq/} \
			https://github.com/downloads/zeromq/pyzmq/

MODULES =		lang/python

LIB_DEPENDS =		net/zeromq>=3.2.2 \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS =		security/py-paramiko \
			devel/py-pexpect

MODPY_DISTUTILS_BUILDARGS =	--zmq=${LOCALBASE}

REGRESS_TARGET = test

# regression tests needs to change default ulimit
# ulimit -n 1024
REGRESS_DEPENDS +=	math/py-numpy \
			devel/py-nose

do-regress:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	${MODPY_BIN} ./${MODPY_SETUP} build_ext --inplace
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
        ${MODPY_BIN} ./${MODPY_SETUP} ${REGRESS_TARGET}

.include <bsd.port.mk>
