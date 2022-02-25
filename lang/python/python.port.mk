# $OpenBSD: python.port.mk,v 1.142 2022/02/25 18:31:30 sthen Exp $
#
#	python.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

CATEGORIES +=		lang/python

# define the default versions
MODPY_DEFAULT_VERSION_2 = 2.7
MODPY_DEFAULT_VERSION_3 = 3.9

# If switching to a new MODPY_DEFAULT_VERSION_3, say 3.x to 3.y:
# - Move PY_DEFAULTONLY from 3.x/Makefile to 3.y/Makefile
# - In 3.x/Makefile and 3.y/Makefile, bump REVISION for -main and -idle
#   (i.e. those PLISTs with "PY_DEFAULTONLY" lines)
# - In 3.y/PLIST-main and 3.y/PLIST-idle add a @conflict on the old
#   REVISION of the old version. For example, for the 3.8->3.9 switch,
#   3.8 -main was 3.8.12p2 and -idle was 3.8.12, so the following
#   were needed:
#   PLIST-main: @conflict python->=3,<3.8.12p3
#   PLIST-idle: @conflict python-idle->=3,<3.8.12p0
#   (Bear in mind that the subpackages might have different REVISIONs)
# - Keep xenocara/share/mk/bsd.xorg.mk PYTHON_VERSION in sync

# If later *removing* an old version:
# - *move* the numbered @conflict python-*->=3.2,<3.x to the new version
#   and update e.g. to  @conflict python-*->=3.2,<3.y
# - *move* the @pkgpath markers to the new version and add a new one for
#   the old version you have just retired.
# - bump revision for any plists that have changed

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

.  if !defined(FLAVORS) || !${FLAVORS:Mpython3} || ${FLAVOR:Mpython3}
# for standard "python3-flavoured" ports (normal for py-* modules),
# set the default MODPY_VERSION for the usual py3 version
MODPY_VERSION ?=	${MODPY_DEFAULT_VERSION_3}
.  else
# for unflavoured "py2+py3" ports (again normal for py-* modules),
# set the default MODPY_VERSION for the usual py2 version
.    if defined(FLAVORS) && ${FLAVORS:Mpython3}
MODPY_VERSION ?=	${MODPY_DEFAULT_VERSION_2}
.    else
# ports which don't have a python3 FLAVOR are either old py2-only py-*
# modules, or are other ports which use Python (e.g. those which are
# intended as a standalone program rather than a py-* module).
# in that case, use the usual py3 version; old py2-only modules
# will set MODPY_VERSION themselves.
.    endif
.  endif
.endif

# verify if MODPY_VERSION found is correct
.if ${MODPY_VERSION} != "2.7" && \
      ${MODPY_VERSION} != "3.8" && \
      ${MODPY_VERSION} != "3.9" && \
      ${MODPY_VERSION} != "3.10"
ERRORS += "Fatal: unknown or unsupported MODPY_VERSION: ${MODPY_VERSION}"
.endif

MODPY_MAJOR_VERSION =	${MODPY_VERSION:R}

.if ${MODPY_MAJOR_VERSION} == 2
MODPY_FLAVOR =
MODPY_BIN_SUFFIX =	-2
MODPY_PY_PREFIX =	py-
MODPY_PYCACHE =
MODPY_PYC_MAGIC_TAG =
MODPY_COMMENT =	"@comment "
MODPY_ABI3SO =
MODPY_PYOEXTENSION =	pyo
.elif ${MODPY_MAJOR_VERSION} == 3
# replace py- prefix by py3-
FULLPKGNAME ?=	${PKGNAME:S/^py-/py3-/}${FLAVOR_EXT:S/-python3//}
MODPY_FLAVOR =	,python3
# use MODPY_BIN_SUFFIX for binaries to avoid conflict
MODPY_BIN_SUFFIX =
MODPY_PY_PREFIX =	py3-
MODPY_PYCACHE =	"__pycache__/"
MODPY_MAJORMINOR =	${MODPY_VERSION:C/\.//g}
MODPY_PYC_MAGIC_TAG =	"cpython-${MODPY_MAJORMINOR}."
MODPY_COMMENT =
MODPY_ABI3SO =		".abi3"
MODPY_PYOEXTENSION ?=	opt-1.pyc
.endif

# If MODPY_PYTEST_ARGS are set, it implies we want MODPY_PYTEST = Yes
MODPY_PYTEST_ARGS ?=
.if empty(MODPY_PYTEST_ARGS)
MODPY_PYTEST ?=		No
.else
MODPY_PYTEST ?=		Yes
.endif

MODPY_WANTLIB =		python${MODPY_VERSION}

MODPY_RUN_DEPENDS =	lang/python/${MODPY_VERSION}
MODPY_LIB_DEPENDS =	lang/python/${MODPY_VERSION}
_MODPY_BUILD_DEPENDS =	lang/python/${MODPY_VERSION}

.if ${MODPY_PYTEST:L} == "yes"
.  if ${MODPY_VERSION} == ${MODPY_DEFAULT_VERSION_2}
NO_TEST = Yes
.  else
MODPY_TEST_DEPENDS =	${RUN_DEPENDS}
MODPY_TEST_DEPENDS +=	devel/py-test${MODPY_FLAVOR}
.  endif
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
.  if ${MODPY_MAJOR_VERSION} == 2
MODPY_SETUPUTILS_DEPEND ?= devel/py2-setuptools
.  else
MODPY_SETUPUTILS_DEPEND ?= devel/py-setuptools${MODPY_FLAVOR}
.  endif

MODPY_RUN_DEPENDS +=	${MODPY_SETUPUTILS_DEPEND}
BUILD_DEPENDS +=	${MODPY_SETUPUTILS_DEPEND}
MODPY_SETUPUTILS =	Yes
# The setuptools uses test target
TEST_TARGET ?=	test
_MODPY_USERBASE =
_MODPY_PRE_BUILD_STEPS += ;[ -e ${WRKSRC}/${MODPY_SETUP} ] || \
			echo 'from setuptools import setup; setup()' \
			> ${WRKSRC}/${MODPY_SETUP}
_MODPY_PRE_BUILD_STEPS += ;${MODPY_CMD} egg_info || true
# Setuptools opportunistically picks up plugins. If it picks one up that
# uses finalize_distribution_options (usually setuptools_scm), junking
# that plugin will cause failure at the end of build.
# In the absence of a targetted means of disabling this, use a big hammer:
DPB_PROPERTIES +=	nojunk
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
MODPY_INCDIR =		${LOCALBASE}/include/python${MODPY_VERSION}
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
MODPY_TEST_LIBDIR ?=	lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}
.else
MODPY_TEST_CMD +=	./${MODPY_SETUP} ${MODPY_SETUP_ARGS}
.endif

MODPY_TEST_LIBDIR ?=
MODPY_TEST_LOCALE ?=	LC_CTYPE=en_US.UTF-8
TEST_ENV +=		${MODPY_TEST_LOCALE}

.if !empty(MODPY_TEST_LIBDIR)
TEST_ENV +=	PYTHONPATH=${MODPY_TEST_LIBDIR}:lib
.endif

SUBST_VARS :=	MODPY_PYCACHE MODPY_COMMENT MODPY_ABI3SO MODPY_PYC_MAGIC_TAG \
		MODPY_BIN MODPY_EGG_VERSION MODPY_VERSION MODPY_BIN_SUFFIX \
		MODPY_PY_PREFIX MODPY_PYOEXTENSION ${SUBST_VARS}

UPDATE_PLIST_ARGS += -S MODPY_BIN_SUFFIX -S MODPY_PYOEXTENSION \
    -I MODPY_ABI3SO -c MODPY_COMMENT -I MODPY_PYCACHE

# set MODPY_BIN for executable scripts
MODPY_BIN_ADJ =	perl -pi \
		-e '$$. == 1 && s|^.*env +python.*$$|\#!${MODPY_BIN}|;' \
		-e '$$. == 1 && s|^.*bin/python.*$$|\#!${MODPY_BIN}|;' \
		-e 'close ARGV if eof;' --

MODPY_ADJ_FILES ?=
.if !empty(MODPY_ADJ_FILES)
MODPYTHON_pre-configure += cd ${WRKSRC} && ${MODPY_BIN_ADJ} ${MODPY_ADJ_FILES}
.endif

MODPY_BUILD_TARGET = ${_MODPY_PRE_BUILD_STEPS}; \
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS}
MODPY_INSTALL_TARGET = \
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS} \
		${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}

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
