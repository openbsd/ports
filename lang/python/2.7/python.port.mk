#	python.port.mk - This file is in the public domain.
#	Xavier Santolaria <xavier@santolaria.net>
#	Stuart Henderson <stu@spacehopper.org>

CATEGORIES +=		lang/python

MODPY_WANTLIB =		python2.7
MODPY_RUN_DEPENDS =	lang/python/2.7
MODPY_LIB_DEPENDS =	lang/python/2.7
_MODPY_BUILD_DEPENDS =	lang/python/2.7
MODPY_TKINTER_DEPENDS =	lang/python/2.7,-tkinter

MODPY_MAJOR_VERSION =	2
MODPY_PY_PREFIX =	py-
MODPY_PYCACHE =
MODPY_PYC_MAGIC_TAG =
MODPY_COMMENT =		"@comment "
MODPY_ABI3SO =
MODPY_PYOEXTENSION =	pyo

MODPY_SETUPTOOLS ?=
MODPY_SETUPUTILS ?=
MODPY_PYBUILD ?=	No
MODPY_PI ?=

MODPY_TEST_DEPENDS =	${MODPY_RUN_DEPENDS}

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

.if ${MODPY_SETUPTOOLS:L} == "yes"
# For Python 2, setuptools provides a package locator that is required at
# runtime for pkg_resources to work, so an RDEP is needed.
MODPY_SETUPUTILS_DEPEND ?= devel/py2-setuptools
MODPY_RUN_DEPENDS +=	${MODPY_SETUPUTILS_DEPEND}
BUILD_DEPENDS +=	${MODPY_SETUPUTILS_DEPEND}
MODPY_SETUPUTILS =	Yes

# The setuptools uses test target
TEST_TARGET ?=	test
_MODPY_USERBASE =
_MODPY_PRE_BUILD_STEPS += ;${MODPY_CMD} egg_info || true
.elif ${MODPY_PYBUILD:L} != no
ERRORS += "Fatal: MODPY_PYBUILD is not supported for Python 2"
.else
MODPY_SETUPUTILS =	No
# Detect the case where a port is capable of building with setup.py
# via fallback to distutils, but should use py-build instead.
_MODPY_SETUPUTILS_FAKE_DIR =	\
	${WRKDIR}/lib/python${MODPY_VERSION}/site-packages/setuptools
_MODPY_PRE_BUILD_STEPS +=	\
	;mkdir -p ${_MODPY_SETUPUTILS_FAKE_DIR} \
	;exec 3>&1 \
	;exec >${_MODPY_SETUPUTILS_FAKE_DIR}/__init__.py \
	;echo 'def setup(*args, **kwargs):' \
	;echo '    msg = "OpenBSD ports: use MODPY_PYBUILD"' \
	;echo '    raise Exception(msg)' \
	;echo 'Extension = Feature = find_packages = setup' \
	;exec 1>&3
_MODPY_USERBASE =	${WRKDIR}
.endif

.if ${MODPY_SETUPTOOLS:L} == "yes"
# Setuptools opportunistically picks up plugins. If it picks one up that
# uses finalize_distribution_options (usually setuptools_scm), junking
# that plugin will cause failure at the end of build.
# In the absence of a targetted means of disabling this, use a big hammer:
DPB_PROPERTIES +=	nojunk
# XXX if a "nojunk" port fails to build, DPB will no longer junk on that
# XXX node, likely resulting in running out of disk space in /usr/local.
.endif

.if ${MODPY_PI:L} == "yes"
_MODPY_EGG_NAME =	${DISTNAME:S/-${MODPY_DISTV}//}
MODPY_PI_DIR ?=		${DISTNAME:C/^([a-zA-Z0-9]).*/\1/}/${_MODPY_EGG_NAME}
SITES =			${SITE_PYPI:=${MODPY_PI_DIR}/}
HOMEPAGE ?=		https://pypi.python.org/pypi/${_MODPY_EGG_NAME}
.endif

MODPY_BIN =		${LOCALBASE}/bin/python2.7
MODPY_INCDIR =		${LOCALBASE}/include/python2.7
MODPY_LIBDIR =		${LOCALBASE}/lib/python2.7
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

_MODPY_RUNBIN =	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN}

MODPY_CMD =	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
			${MODPY_BIN} ./${MODPY_SETUP} \
			${MODPY_SETUP_ARGS}

MODPY_TEST_DIR ?=	${WRKSRC}

MODPY_TEST_CMD = cd ${MODPY_TEST_DIR} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN}
MODPY_TEST_CMD +=	./${MODPY_SETUP} ${MODPY_SETUP_ARGS}

MODPY_TEST_LIBDIR ?=
MODPY_TEST_LOCALE ?=	LC_CTYPE=en_US.UTF-8
TEST_ENV +=		${MODPY_TEST_LOCALE}

.if !empty(MODPY_TEST_LIBDIR)
TEST_ENV +=	PYTHONPATH=${MODPY_TEST_LIBDIR}:lib:src
.endif

SUBST_VARS :=	MODPY_PYCACHE MODPY_COMMENT MODPY_ABI3SO MODPY_PYC_MAGIC_TAG \
		MODPY_BIN MODPY_DISTV MODPY_VERSION \
		MODPY_PY_PREFIX MODPY_PYOEXTENSION ${SUBST_VARS}

UPDATE_PLIST_ARGS += -S MODPY_PYOEXTENSION \
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

.if ${MODPY_VERSION} == ${MODPY_DEFAULT_VERSION_2}
MODPY_COMPILEALL = ${MODPY_BIN} -m compileall
.else
MODPY_COMPILEALL = ${MODPY_BIN} -m compileall -j ${MAKE_JOBS} -s ${WRKINST} -o 0 -o 1
.endif

MODPY_TEST_TARGET =
MODPY_TEST_LINK_SO ?=	No
.if ${MODPY_TEST_LINK_SO:L} == "yes" && !empty(MODPY_TEST_LIBDIR)
MODPY_TEST_LINK_SRC ?=	${WRKSRC}
MODPY_TEST_SO_CMD = for _dir in ${MODPY_TEST_LIBDIR:S,:, ,g}; do \
	if [ -d $${_dir} ]; then \
		if [ $${_dir} != ${MODPY_TEST_LINK_SRC} ]; then \
			cd $${_dir} && \
			find . -name '*.so' -type f \
				-exec ln -sf $${_dir}/{} \
					${MODPY_TEST_LINK_SRC}/{} \; ;\
		fi; \
	fi; done
MODPY_TEST_TARGET +=	${MODPY_TEST_SO_CMD};
.endif

MODPY_BUILD_TARGET = ${_MODPY_PRE_BUILD_STEPS}; \
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS}
MODPY_INSTALL_TARGET = \
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS} \
		${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}

MODPY_TEST_TARGET +=	${MODPY_TEST_CMD}
.if ${MODPY_SETUPUTILS:L} == "yes"
MODPY_TEST_TARGET +=	${TEST_TARGET}
.endif

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

.  if !target(do-test) && (${MODPY_SETUPUTILS:L} == "yes"
do-test:
	@${MODPY_TEST_TARGET}
.  endif

.endif
