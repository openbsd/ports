# $OpenBSD: python.port.mk,v 1.121 2020/07/03 21:10:55 sthen Exp $
#
#	python.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

CATEGORIES +=		lang/python

# define the default versions
MODPY_DEFAULT_VERSION_2 = 2.7
MODPY_DEFAULT_VERSION_3 = 3.8

# If switching to a new MODPY_DEFAULT_VERSION_3:
# - In the old default version, @comment the non-suffixed bin/XXX files (python3,
#   pydoc3, idle3, etc), lib/pkgconfig/python3.pc, and man/man1/python3.1 and
#   bump REVISION
# - In the new version, un-@comment these same files
# - In the new version, @conflict on the old REVISION of the old version
#   (3.6.8p1 was "default py3 is py3.6", 3.6.8p2 was after the switch to "default
#   is py3.7", so the 3.7 ports had @conflict python-subpkg-<3.6.8p2)

# If later *removing* an old version:
# - *move* the numbered @conflict python-*->=3.2,<3.7 to the new version
#   and update e.g. to  @conflict python-*->=3.2,<3.8
# - *move* the @pkgpath markers to the new version and add a new one for
#   the old version you have just retired.

# In all cases:
# - keep the @conflict python-*-${VERSION_SPEC} PLIST lines as-is, they are
#   there to override the "@option no-default-conflict" and set automatically
#   from the variable defined in 3.x/Makefile.

# Also note:
# - Some subpackages e.g. -idle have a conflict on an old version of the main
#   package e.g. "@conflict python->=3.6,<3.6.8p0", this is due to a file
#   moving between subpackages in the past.

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
      ${MODPY_VERSION} != "3.7" && \
      ${MODPY_VERSION} != "3.8"
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
MODPY_ABI3SO =
MODPY_PYOEXTENSION =	pyo
.elif ${MODPY_MAJOR_VERSION} == 3
.  if ${MODPY_VERSION} == "3.7"
MODPY_LIB_SUFFIX =	m
.  else
# 3.8 (and presumably later) discards the m suffix on the library
MODPY_LIB_SUFFIX =
.  endif
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
MODPY_ABI3SO =		".abi3"
MODPY_PYOEXTENSION ?=	opt-1.pyc
.endif

MODPY_PYTEST ?=		No

MODPY_WANTLIB =		python${MODPY_VERSION}${MODPY_LIB_SUFFIX}

MODPY_RUN_DEPENDS =	lang/python/${MODPY_VERSION}
MODPY_LIB_DEPENDS =	lang/python/${MODPY_VERSION}
_MODPY_BUILD_DEPENDS =	lang/python/${MODPY_VERSION}

MODPY_TEST_DEPENDS =	${RUN_DEPENDS}
.if ${MODPY_PYTEST:L} == "yes"
MODPY_TEST_DEPENDS +=	devel/py-test${MODPY_FLAVOR}
.endif

.if ${NO_BUILD:L} == "no"
MODPY_BUILDDEP ?=	Yes
.else
MODPY_BUILDDEP ?=	No
.endif
MODPY_RUNDEP ?=		Yes
.if ${NO_TEST:L} == "no"
MODPY_TESTDEP ?=	Yes
.else
MODPY_TESTDEP ?=	No
.endif

.if ${MODPY_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}
.endif

.if ${MODPY_RUNDEP:L} == "yes"
RUN_DEPENDS +=		${MODPY_RUN_DEPENDS}
.endif

.if ${MODPY_TESTDEP:L} == "yes"
TEST_DEPENDS +=		${MODPY_TEST_DEPENDS}
.endif

_MODPY_PRE_BUILD_STEPS = :
.if defined(MODPY_SETUPTOOLS) && ${MODPY_SETUPTOOLS:L} == "yes"
# The setuptools module provides a package locator (site.py) that is
# required at runtime for the pkg_resources stuff to work
MODPY_SETUPUTILS_DEPEND ?= devel/py-setuptools${MODPY_FLAVOR}>=39.0.1v0

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

.if defined(MODPY_PI) && ${MODPY_PI:L} == "yes"
_MODPY_EGG_NAME =	${DISTNAME:S/-${MODPY_EGG_VERSION}//}
MODPY_PI_DIR ?=		${DISTNAME:C/^([a-zA-Z0-9]).*/\1/}/${_MODPY_EGG_NAME}
MASTER_SITES =		${MASTER_SITE_PYPI:=${MODPY_PI_DIR}/}
HOMEPAGE ?=		https://pypi.python.org/pypi/${_MODPY_EGG_NAME}
.endif

MODPY_TKINTER_DEPENDS =	lang/python/${MODPY_VERSION},-tkinter

MODPY_BIN =		${LOCALBASE}/bin/python${MODPY_VERSION}
MODPY_INCDIR =		${LOCALBASE}/include/python${MODPY_VERSION}${MODPY_LIB_SUFFIX}
MODPY_LIBDIR =		${LOCALBASE}/lib/python${MODPY_VERSION}
MODPY_SITEPKG =		${MODPY_LIBDIR}/site-packages

# usually setup.py but Setup.py can be found too
MODPY_SETUP ?=		setup.py

# build or build_ext are commonly used
MODPY_DISTUTILS_BUILD ?=	build --build-base=${WRKBUILD}

.if ${MODPY_SETUPUTILS:L} == "yes"
MODPY_DISTUTILS_INSTALL ?=	install --prefix=${TRUEPREFIX} \
				--root=${DESTDIR} \
				--single-version-externally-managed
.else
MODPY_DISTUTILS_INSTALL ?=	install --prefix=${TRUEPREFIX} \
				--root=${DESTDIR}
.endif

MAKE_ENV +=		CC=${CC} PYTHONUSERBASE=${_MODPY_USERBASE}
CONFIGURE_ENV +=	PYTHON="${MODPY_BIN}"
.if ${CONFIGURE_STYLE:Mgnu}
CONFIGURE_ENV +=	ac_cv_prog_PYTHON="${MODPY_BIN}" \
			ac_cv_path_PYTHON="${MODPY_BIN}"
.endif

MODPY_CMD =	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
			${MODPY_BIN} ./${MODPY_SETUP} \
			${MODPY_SETUP_ARGS}

MODPY_TEST_DIR ?=	${WRKSRC}

MODPY_TEST_CMD = cd ${MODPY_TEST_DIR} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN}
.if ${MODPY_PYTEST:L} == "yes"
MODPY_TEST_CMD +=	-m pytest
.else
MODPY_TEST_CMD +=	./${MODPY_SETUP} ${MODPY_SETUP_ARGS}
.endif

MODPY_TEST_LOCALE ?=	LC_CTYPE=en_US.UTF-8

TEST_ENV +=		${MODPY_TEST_LOCALE}

SUBST_VARS :=	MODPY_PYCACHE MODPY_COMMENT MODPY_ABI3SO MODPY_PYC_MAGIC_TAG \
		MODPY_BIN MODPY_EGG_VERSION MODPY_VERSION MODPY_BIN_SUFFIX \
		MODPY_PY_PREFIX MODPY_PYOEXTENSION ${SUBST_VARS}

UPDATE_PLIST_ARGS += -S MODPY_BIN_SUFFIX -S MODPY_PYOEXTENSION \
    -I MODPY_ABI3SO -c MODPY_COMMENT -I MODPY_PYCACHE

# set MODPY_BIN for executable scripts
MODPY_BIN_ADJ =	perl -pi \
		-e '$$. == 1 && s|^.*env +python.*$$|\#!${MODPY_BIN}|;' \
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

MODPY_PYTEST_ARGS ?=

MODPY_TEST_TARGET =	${MODPY_TEST_CMD}
.if ${MODPY_PYTEST:L} == "yes"
MODPY_TEST_TARGET +=	${MODPY_PYTEST_ARGS}
.elif ${MODPY_SETUPUTILS:L} == "yes"
MODPY_TEST_TARGET +=	${TEST_TARGET}
.endif

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
.  if !target(do-test) && \
      (${MODPY_SETUPUTILS:L} == "yes" || ${MODPY_PYTEST:L} == "yes")
do-test:
	@${MODPY_TEST_TARGET}
.  endif

.  if make(update-plist) || make(plist)
.    if defined(FLAVORS) && ${FLAVORS:Mpython3} && !${FLAVOR:Mpython3}
ERRORS += "***\n*** WARNING: running update-plist without FLAVOR=python3\n***\n***"
.    endif
.  endif

.endif
