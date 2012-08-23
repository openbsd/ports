# $OpenBSD: Makefile,v 1.4 2012/08/23 19:19:16 sthen Exp $

COMMENT =		C-Extensions for Python

MODPY_EGG_VERSION = 	0.14.1
DISTNAME =		Cython-${MODPY_EGG_VERSION}
REVISION=		1
PKGNAME =		${DISTNAME:L}

CATEGORIES =		lang

HOMEPAGE =		http://www.cython.org/
MASTER_SITES =		${HOMEPAGE}release/ \
			${MASTER_SITE_PYPI:=C/Cython/}

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=  c pthread ${MODPY_WANTLIB}

MODULES =		lang/python

REGRESS_TARGET =	test

MAKE_ENV +=		PYTHON=${MODPY_BIN}

do-regress:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
        ${ALL_REGRESS_FLAGS} -f ${MAKE_FILE} ${REGRESS_TARGET}

.include <bsd.port.mk>
