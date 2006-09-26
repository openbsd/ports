# $OpenBSD: python.port.mk,v 1.13 2006/09/26 15:27:02 djm Exp $
#
#	python.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

MODPY_VERSION?=		2.4

_MODPY_BUILD_DEPENDS=	:python-${MODPY_VERSION}*:lang/python/${MODPY_VERSION}

.if ${NO_BUILD:L} == "no"
BUILD_DEPENDS+=		${_MODPY_BUILD_DEPENDS}
.endif
RUN_DEPENDS+=		${_MODPY_BUILD_DEPENDS}

# The setuptools module provides a package locator (site.py) that is
# required at runtime for the pkg_resources stuff to work
.if defined(MODPY_SETUPTOOLS) && ${MODPY_SETUPTOOLS:U} == YES
MODPY_SETUPUTILS_DEPEND?=:py-setuptools-*:devel/py-setuptools
RUN_DEPENDS+=		${MODPY_SETUPUTILS_DEPEND}
BUILD_DEPENDS+=		${MODPY_SETUPUTILS_DEPEND}
.endif

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
MODPY_EXPAT_DEPENDS=	:python-expat-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-expat	
MODPY_TKINTER_DEPENDS=	:python-tkinter-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-tkinter
.endif

MODPY_BIN=		${LOCALBASE}/bin/python${MODPY_VERSION}
MODPY_INCDIR=		${LOCALBASE}/include/python${MODPY_VERSION}
MODPY_LIBDIR=		${LOCALBASE}/lib/python${MODPY_VERSION}
MODPY_SITEPKG=		${MODPY_LIBDIR}/site-packages

# usually setup.py but Setup.py can be found too
MODPY_SETUP?=		setup.py

# build or build_ext are commonly used
MODPY_DISTUTILS_BUILD?=		build --build-base=${WRKSRC}

.if defined(MODPY_SETUPTOOLS) && ${MODPY_SETUPTOOLS:U} == YES
MODPY_DISTUTILS_INSTALL?=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR} \
				--single-version-externally-managed
.else
MODPY_DISTUTILS_INSTALL?=	install --prefix=${PREFIX}
.endif

MAKE_ENV+=	CC=${CC}

_MODPY_CMD=	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
			${MODPY_BIN} ./${MODPY_SETUP}

SUBST_VARS+=	MODPY_VERSION

# dirty way to do it with no modifications in bsd.port.mk
.if empty(CONFIGURE_STYLE)
.  if !target(do-build)
do-build:
	${_MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS}
.  endif

# extra documentation or scripts should be installed via post-install
.  if !target(do-install)
do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS} \
		${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
.  endif

# setuptools supports regress testing from setup.py using a standard target
.  if !target(do-regress) && \
      defined(MODPY_SETUPTOOLS) && ${MODPY_SETUPTOOLS:U} == YES
do-regress:
	${_MODPY_CMD} test
.  endif

.endif
