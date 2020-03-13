# $OpenBSD: Makefile.inc,v 1.14 2020/03/13 16:53:49 rsadowski Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}

.include "Makefile.version"

# DIST_VERSION should be defined, e.g., when patch distfile gets issued,
# e.g.: qtbase-everywhere-src-5.5.1-1.tar.gz

VERSION ?=		${QT5_VERSION}
DIST_VERSION ?=		${QT5_DIST_VERSION}
NEXT_VERSION ?=		${QT5_NEXT_VERSION}
DISTNAME ?=		${QT5NAME:L}-everywhere-src-${DIST_VERSION}

PKGNAME ?=		${DISTNAME:C/-everywhere-src//:C/-${DIST_VERSION}/-${VERSION}/}
PKGNAME-main ?=		${PKGNAME}
PKGNAME-examples ?=	${PKGNAME:C/(-[0-9])/-examples\1/}

COMMENT-examples ?=	${QT5NAME} development examples

PKG_ARCH-examples =	*

DPB_PROPERTIES +=	nojunk

CATEGORIES +=		x11 x11/qt5 devel
HOMEPAGE ?=		https://www.qt.io/

# We don't build examples, but provide sources only.
WANTLIB-examples ?=
LIB_DEPENDS-examples ?=
RUN_DEPENDS-examples ?=	${RUN_DEPENDS}
RUN_DEPENDS-examples +=	${BUILD_PKGPATH},-main>=${VERSION:R},<${NEXT_VERSION}

# Mostly LGPLv2.1 or LGPLv3 for code; FDLv1.3 for documentation.
# Some third-party parts are BSD-licensed.
# Also, many parts have are dual-licensed having either commercial, GPL,
# Apache 2.0 or other type of license as an alternative option.
# A few components, including QtWebEngine, are LGPLv3 only, no LGPLv2.1.
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		https://download.qt.io/official_releases/qt/${QT5_DIST_VERSION:R}/${QT5_DIST_VERSION}/submodules/
DIST_SUBDIR ?=		qt
EXTRACT_SUFX ?=		.tar.xz

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}

CONFIGURE_STYLE ?=	qmake
.if ${CONFIGURE_STYLE:Mqmake}
MODULES +=		devel/qmake
.endif
MODULES +=		x11/qt5

DESTDIRNAME =		INSTALL_ROOT

MAKE_ENV +=		REAL_BUILD_ROOT=${WRKBUILD}

MAKE_FLAGS =		-B -j ${MAKE_JOBS} \
			PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}
.for _l _v in ${SHARED_LIBS}
  MAKE_FLAGS +=		LIB${_l}_VERSION=${_v}
.endfor

# qmake supports so-called "shadow" builds: it's like normal
# out-of-source build but build directory is required to be located
# under source root.
SEPARATE_BUILD ?=	Yes
.if ${SEPARATE_BUILD:L} == "yes"
WRKBUILD =		${WRKSRC}/build-${ARCH}
.endif

# readability macros
QT_BASEDIR =	${PREFIX}/lib/qt5
QT_INCDIR =	${PREFIX}/include/X11/qt5
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt5
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig
QT_CMAKEDIR =	${QT_BASEDIR}/cmake

CONFIGURE_ENV +=	MAKE=make \
			MAKEFLAGS="-j ${MAKE_JOBS}" \
			EXTRA_CPPFLAGS="-DLOCALBASE=\\\"${LOCALBASE}\\\" -DX11BASE=\\\"${X11BASE}\\\""

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV += LDFLAGS="-Wl,--relax"
.endif

# QtWebkit (at least, maybe others) plays dirty games with inter-target
# dependencies, so we'd better use the target qmake always creates
# first, named "first".
ALL_TARGET ?=		first
FAKE_TARGET ?=		install
TEST_TARGET ?=		check

.include <bsd.port.arch.mk>

FLAVOR ?=

.if ${CONFIGURE_STYLE:Mqmake}
. if !${BUILD_PACKAGES:M-examples}
MODQMAKE_ARGS +=	CONFIG-=examples
. endif
.endif

NO_TEST ?=		No
.if ${FLAVOR:Mno_tests}
NO_TEST =		Yes
.endif

SUBST_VARS +=		VERSION

PROGRAMS5 =	assistant designer linguist lrelease lupdate moc pixeltool \
		qcollectiongenerator qdbus qdoc qmake qml qtdiag rcc uic

.if ${CONFIGURE_STYLE:Mqmake}
.PHONY: qt5-post-extract
post-extract: qt5-post-extract
qt5-post-extract:
	# Avoid building examples, we'll simply package sources;
	# qt_parts qmake feature checks presence of this file exactly.
	rm -f ${WRKDIST}/examples/examples.pro
. if ${NO_TEST:L} == "yes"
	rm -f ${WRKDIST}/tests/tests.pro
. endif
.endif

.PHONY: qt5-post-install
post-install: qt5-post-install
qt5-post-install:
	# public programs
.for p in ${PROGRAMS5}
	! test -e ${PREFIX}/lib/qt5/bin/$p || \
	    ln -sf ../lib/qt5/bin/$p ${PREFIX}/bin/$p-qt5
.endfor
	# shared libraries
.for l v in ${SHARED_LIBS}
	cd ${PREFIX}/lib; \
	f=qt5/lib$l.so.$v; \
	! test -f $$f || ln -sf $$f .
.endfor
	# pkg-config files
	@if [ -d ${QT_PKGCFGDIR} ]; then \
		for f in ${QT_PKGCFGDIR}/*; do \
			echo $${f##*/}; \
			perl -p -e 's@ -L$${WRKBUILD}\S+@@g;' \
			        -e 's@ -Wl,-whole-archive.*@@;' \
			    $$f >${PREFIX}/lib/pkgconfig/$${f##*/}; \
		done; \
	fi
	# CMake files get values from QMake config "as is"
	find ${QT_CMAKEDIR} -type f -print0 | xargs -0r perl -pi \
		-e 's,\$$\(LOCALBASE\),${LOCALBASE},g;' \
		-e 's,\$$\(X11BASE\),${X11BASE},g;'
	# remove unpatched files
	find ${QT_BASEDIR}/mkspecs -name '*${PATCHORIG}' | xargs -r rm
.if ${CONFIGURE_STYLE:Mqmake} && ${BUILD_PACKAGES:M-examples}
	# install examples sources
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt5/examples
	cd ${WRKSRC}/examples; \
	pax -rw */ ${PREFIX}/lib/qt5/examples
.endif

#
# Helper targets, used during port development.
#

.PHONY: gen_pkg gen_pkg_plist gen_pkg_descr
gen_pkg: gen_pkg_plist gen_pkg_descr

# Generates DESCR-* from DESCR-main.
QT5_DESCR_SRC ?=	-main
QT5_DESCR_SRC :=	${PKGDIR}/DESCR${QT5_DESCR_SRC}
gen_pkg_descr:
	test -e ${QT5_DESCR_SRC}
.if ${MULTI_PACKAGES:M-examples}
	test X"${QT5_DESCR_SRC}" = X"${PKGDIR}/DESCR-examples" || \
	sed '$$s/.*/This package contains sources for ${QT5NAME} usage examples./' \
		<${QT5_DESCR_SRC} >${PKGDIR}/DESCR-examples
.endif

# Generates PLIST-* from PLIST-main.
# Don't forget to run "rm pkg/PLIST-*; make plist" before this.
gen_pkg_plist:
	test -e ${PKGDIR}/PLIST-main
.if ${BUILD_PACKAGES:M-examples}
	echo -n '@comment $$Open'       >${PKGDIR}/PLIST-examples
	echo                   'BSD$$' >>${PKGDIR}/PLIST-examples
	egrep '^(@.* )?lib/qt5/examples/' ${PKGDIR}/PLIST-main >>${PKGDIR}/PLIST-examples
	sed -Ei '\,^(@.* )?lib/qt5/examples/,d' ${PKGDIR}/PLIST-main
.endif
