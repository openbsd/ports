# $OpenBSD: python.port.mk,v 1.75 2014/06/03 11:29:32 rpointel Exp $
#
#	python.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

CATEGORIES +=		lang/python

# define the default versions
MODPY_DEFAULT_VERSION_2 = 2.7
MODPY_DEFAULT_VERSION_3 = 3.4

.if !defined(MODPY_VERSION)

FLAVOR ?=

.  if ${FLAVOR:Mpython3}
# define default version 3
MODPY_VERSION ?=	${MODPY_DEFAULT_VERSION_3}
.  else
# without flavor, assume we use the default version 2
MODPY_VERSION ?=	${MODPY_DEFAULT_VERSION_2}
.  endif

# verify if MODPY_VERSION forced is correct
.else
.  if ${MODPY_VERSION} != "2.7" && \
      ${MODPY_VERSION} != "3.3" && \
      ${MODPY_VERSION} != "3.4"
ERRORS += "Fatal: unknown or unsupported MODPY_VERSION: ${MODPY_VERSION}"
.  endif
.endif

MODPY_MAJOR_VERSION =	${MODPY_VERSION:R}

.if ${MODPY_MAJOR_VERSION} == 2
MODPY_LIB_SUFFIX =
MODPY_FLAVOR =
MODPY_BIN_SUFFIX =
MODPY_PY_PREFIX =	py-
MODPY_PYCACHE =
MODPY_PYC_MAGIC_TAG =
MODPY_COMMENT =	"@comment "

.elif ${MODPY_MAJOR_VERSION} == 3
MODPY_LIB_SUFFIX =	m
# replace py- prefix by py3-
FULLPKGNAME ?=	${PKGNAME:S/^py-/py3-/}${FLAVOR_EXT:S/-python3//}
MODPY_FLAVOR =	,python3
# use MODPY_SUFFIX for binaries to avoid conflict
MODPY_BIN_SUFFIX =	-3
MODPY_PY_PREFIX =	py3-
MODPY_PYCACHE =	"__pycache__/"
MODPY_MAJORMINOR =	${MODPY_VERSION:C/\.//g}
MODPY_PYC_MAGIC_TAG =	"cpython-${MODPY_MAJORMINOR}."
MODPY_COMMENT =

.endif

MODPY_WANTLIB = python${MODPY_VERSION}${MODPY_LIB_SUFFIX}

MODPY_RUN_DEPENDS =	lang/python/${MODPY_VERSION}
MODPY_LIB_DEPENDS =	${MODPY_RUN_DEPENDS}
_MODPY_BUILD_DEPENDS =	${MODPY_RUN_DEPENDS}

MODPY_BUILDDEP ?=	Yes
MODPY_RUNDEP ?=		Yes

.if ${NO_BUILD:L} == "no" && ${MODPY_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}
.endif
.if ${MODPY_RUNDEP:L} == "yes"
RUN_DEPENDS +=		${MODPY_RUN_DEPENDS}
.endif

.if ${MODPY_BUILDDEP:L} == "yes" || ${MODPY_RUNDEP:L} == "yes"
SHARED_ONLY =		Yes
.endif

_MODPY_PRE_BUILD_STEPS = :
.if defined(MODPY_SETUPTOOLS) && ${MODPY_SETUPTOOLS:L} == "yes"
# The setuptools module provides a package locator (site.py) that is
# required at runtime for the pkg_resources stuff to work
.  if ${MODPY_MAJOR_VERSION} == 2
MODPY_SETUPUTILS_DEPEND ?= devel/py-setuptools
.  elif ${MODPY_MAJOR_VERSION} == 3
MODPY_SETUPUTILS_DEPEND ?= devel/py-distribute${MODPY_FLAVOR}
.  endif

MODPY_RUN_DEPENDS +=	${MODPY_SETUPUTILS_DEPEND}
BUILD_DEPENDS +=	${MODPY_SETUPUTILS_DEPEND}
MODPY_SETUPUTILS =	Yes
# The setuptools uses test target
TEST_TARGET ?=	test
_MODPY_USERBASE =
_MODPY_PRE_BUILD_STEPS += ;${MODPY_CMD} egg_info || true
.else
# Try to detect the case where a port will build regardless of setuptools
# but the final plist will be different if it's present.
_MODPY_SETUPUTILS_FAKE_DIR =	\
	${WRKDIR}/lib/python${MODPY_VERSION}/site-packages/setuptools
_MODPY_PRE_BUILD_STEPS +=	\
	;mkdir -p ${_MODPY_SETUPUTILS_FAKE_DIR} \
	;exec 3>&1 \
	;exec >${_MODPY_SETUPUTILS_FAKE_DIR}/__init__.py \
	;echo 'def setup(*args, **kwargs):' \
	;echo '    msg = "OpenBSD ports: MODPY_SETUPTOOLS = Yes is required"' \
	;echo '    raise Exception(msg)' \
	;echo 'Extension = Feature = find_packages = setup' \
	;exec 1>&3
MODPY_SETUPUTILS =	No
_MODPY_USERBASE =	${WRKDIR}
.endif

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:L} != "yes"
MODPY_TKINTER_DEPENDS =	${MODPY_RUN_DEPENDS},-tkinter
.endif

MODPY_BIN =		${LOCALBASE}/bin/python${MODPY_VERSION}
MODPY_INCDIR =		${LOCALBASE}/include/python${MODPY_VERSION}${MODPY_LIB_SUFFIX}
MODPY_LIBDIR =		${LOCALBASE}/lib/python${MODPY_VERSION}
MODPY_SITEPKG =		${MODPY_LIBDIR}/site-packages

# usually setup.py but Setup.py can be found too
MODPY_SETUP ?=		setup.py

# build or build_ext are commonly used
MODPY_DISTUTILS_BUILD ?=	build --build-base=${WRKSRC}

.if ${MODPY_SETUPUTILS:L} == "yes"
MODPY_DISTUTILS_INSTALL ?=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR} \
				--single-version-externally-managed
.else
MODPY_DISTUTILS_INSTALL ?=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR}
.endif

MAKE_ENV +=	CC=${CC} PYTHONUSERBASE=${_MODPY_USERBASE}
CONFIGURE_ENV += PYTHON="${MODPY_BIN}" \
		ac_cv_prog_PYTHON="${MODPY_BIN}" \
		ac_cv_path_PYTHON="${MODPY_BIN}"

MODPY_CMD =	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
			${MODPY_BIN} ./${MODPY_SETUP}

SUBST_VARS :=	MODPY_PYCACHE MODPY_COMMENT MODPY_PYC_MAGIC_TAG MODPY_BIN MODPY_EGG_VERSION MODPY_VERSION MODPY_BIN_SUFFIX MODPY_PY_PREFIX ${SUBST_VARS}

# set MODPY_BIN for executable scripts
MODPY_BIN_ADJ =	perl -pi \
		-e '$$. == 1 && s|^.*env python.*$$|\#!${MODPY_BIN}|;' \
		-e '$$. == 1 && s|^.*bin/python.*$$|\#!${MODPY_BIN}|;' \
		-e 'close ARGV if eof;'

MODPY_ADJ_FILES ?=
.if !empty(MODPY_ADJ_FILES)
MODPYTHON_pre-configure += for f in ${MODPY_ADJ_FILES}; do \
	${MODPY_BIN_ADJ} ${WRKSRC}/$${f}; done
.endif

MODPY_BUILD_TARGET = ${_MODPY_PRE_BUILD_STEPS}; \
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS}
MODPY_INSTALL_TARGET = \
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS} \
		${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
MODPY_TEST_TARGET = \
	${MODPY_CMD} ${TEST_TARGET}

# dirty way to do it with no modifications in bsd.port.mk
.if empty(CONFIGURE_STYLE)
.  if !target(do-build)
do-build:
	@${MODPY_BUILD_TARGET}
.  endif

# extra documentation or scripts should be installed via post-install
.  if !target(do-install)
do-install:
	@${MODPY_INSTALL_TARGET}
.  endif

# setuptools supports regress testing from setup.py using a standard target
.  if !target(do-test) && ${MODPY_SETUPUTILS:L} == "yes"
do-test:
	@${MODPY_TEST_TARGET}
.  endif

.endif
