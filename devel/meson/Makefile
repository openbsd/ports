# $OpenBSD: Makefile,v 1.54 2019/03/13 13:57:00 ajacoutot Exp $

COMMENT=		next-generation build system

MODPY_EGG_VERSION=	${GH_TAGNAME}
GH_ACCOUNT=		mesonbuild
GH_PROJECT=		meson
GH_TAGNAME=		0.50.0
EPOCH=			0

CATEGORIES=		devel

HOMEPAGE=		http://mesonbuild.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/ninja

# XXX hand rolled patch (space file names)
# patch-test_cases_common_137_get_define_meson_build
BUILD_DEPENDS +=	devel/gpatch
PATCH=			gpatch
PATCH_STRIP=		-p0 -b

# regression tests need to run as root
TEST_IS_INTERACTIVE=	Yes

# test_objc_cpp_detection (__main__.FailureTests) ... skipped "objc and objcpp found, can't test detection failure"
# test_d_compiler (__main__.NativeFileTests) ... skipped 'No d compiler found.'
# test_swift_compiler (__main__.NativeFileTests) ... skipped 'No swift compiler found.'
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/git \
			devel/jdk/1.8 \
			devel/mercurial \
			devel/sdl2 \
			g95->=8,<9:lang/gcc/8,-f95 \
			lang/mono \
			lang/rust \
			lang/vala \
			shells/bash \
			x11/wxWidgets

# FAIL: test_testsetups (__main__.AllPlatformTests)
#    self.assertTrue('TEST_ENV is set' in vg_log)
#TEST_DEPENDS +=		devel/valgrind

pre-configure:
	sed -i "s,share/man,man," ${WRKSRC}/setup.py
	sed -i "s,/usr/bin,${PREFIX}/bin,g" \
		${WRKSRC}/data/com.mesonbuild.install.policy

# gfortran: test_fortran_compiler; XXX hardcoded
# XXX test_fortran_compiler ... skipped 'No alternate Fortran implementation.'
# javac: test_java_compiler; XXX hardcoded
# python: test cases/unit/46 native file binary
do-test:
	ln -sf ${LOCALBASE}/jdk-1.8.0/bin/javac ${WRKDIR}/bin/javac
	ln -sf ${LOCALBASE}/bin/egfortran ${WRKDIR}/bin/gfortran
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC} && PATH=${PORTPATH} && ./run_tests.py --failfast

.include <bsd.port.mk>
