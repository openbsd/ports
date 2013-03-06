# $OpenBSD: Makefile,v 1.5 2013/03/06 07:42:54 bentley Exp $

COMMENT =		C-Extensions for Python

MODPY_EGG_VERSION = 	0.18
DISTNAME =		Cython-${MODPY_EGG_VERSION}
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
