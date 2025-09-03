# When updating/switching to a new version, remember to adapt devel/llvm!
#

BROKEN-mips64 = build/genautomata ... Segmentation fault
BROKEN-sparc64 = ICE during selftests

ONLY_FOR_ARCHS = aarch64 alpha amd64 arm hppa i386 mips64 mips64el \
	powerpc powerpc64 riscv64 sparc64

ONLY_FOR_ARCHS-ada = amd64 i386 mips64 powerpc

DPB_PROPERTIES = parallel

USE_NOEXECONLY = Yes

V = 15.2.0
FULL_VERSION = $V
FULL_PKGVERSION = $V

ADASTRAP-amd64 = adastrap-amd64-11.2.0-5.tar.xz
ADASTRAP-arm = adastrap-arm-4.9.4-0.tar.xz
ADASTRAP-hppa = adastrap-hppa-8.3.0-1.tar.xz
ADASTRAP-i386 = adastrap-i386-11.2.0-4.tar.xz
ADASTRAP-mips64 = adastrap-mips64-8.4.0-5.tar.xz
ADASTRAP-powerpc = adastrap-powerpc-11.2.0-3.tar.xz
ADASTRAP-sparc64 = adastrap-sparc64-6.5.0-0.tar.xz

PKGNAME-main =  gcc-${FULL_PKGVERSION}
PKGNAME-libs =	gcc-libs-${FULL_PKGVERSION}
PKGNAME-c++ =   g++-${FULL_PKGVERSION}
PKGNAME-f95 =   g95-${FULL_PKGVERSION}
PKGNAME-objc =  gobjc-${FULL_PKGVERSION}
PKGNAME-ada =   gnat-${FULL_PKGVERSION}
PKGSPEC-main = gcc->=15,<16

SHARED_LIBS =	estdc++		21.0 \
		gfortran	10.0 \
		objc		10.0 \
		lto_plugin      7.0 \
		itm		6.0 \
		atomic		5.0 \
		quadmath	5.0 \
		cc1		3.0 \
		cc1plugin	3.0 \
		cp1plugin	2.0

PSEUDO_FLAVORS = no_ada full
FLAVOR ?=

MULTI_PACKAGES = -main -libs -f95 -objc -c++ -ada

.include <bsd.port.arch.mk>

DISTNAME =	gcc-${FULL_VERSION}
DISTFILES =	${DISTNAME}.tar.xz
.for _arch in ${ONLY_FOR_ARCHS-ada}
SUPDISTFILES.strap += ${ADASTRAP-${_arch}}
.endfor
EXTRACT_ONLY =	${DISTFILES}

BUILD_DEPENDS +=	devel/bison

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "powerpc64" || \
    ${MACHINE_ARCH} == "riscv64"
BUILD_DEPENDS +=	devel/gas
RUN_DEPENDS +=		devel/gas
RUN_DEPENDS-main +=	devel/gas
TEST_DEPENDS +=		devel/gas
CONFIGURE_ARGS +=	--with-as="${LOCALBASE}/bin/gas"
.endif

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
BUILD_DEPENDS +=	textproc/gsed
.endif

TEST_DEPENDS += devel/dejagnu \
		devel/autogen \
		${BUILD_PKGPATH},-libs>=15,<16

LANGS = c,c++,fortran,objc
.if ${BUILD_PACKAGES:M-ada}
DISTFILES.strap += ${ADASTRAP-${MACHINE_ARCH}}
EXTRACT_ONLY += ${ADASTRAP-${MACHINE_ARCH}}
CC = ${WRKDIR}/bin/egcc
CXX = ${WRKDIR}/bin/eg++
# make sure we link the right libestdc++.a in stage1 when using a bootstrap
CONFIGURE_ARGS += --with-stage1-ldflags="-L${WRKDIR}/bootstrap/lib"
.elif ${PROPERTIES:Mgcc4}
# We now require C++11.
BUILD_DEPENDS += lang/bootgcc
CC = ${LOCALBASE}/bootstrap-gcc/bin/gcc
CXX = ${LOCALBASE}/bootstrap-gcc/bin/g++
.endif

.if ${BUILD_PACKAGES:M-ada}
LANGS := ${LANGS},ada
TEST_DEPENDS += ${BUILD_PKGPATH},-ada
.endif

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

EXTRA_ENV += am_cv_func_iconv=no
EXTRA_ENV += ac_cv_prog_M4=/usr/bin/m4
EXTRA_ENV += ac_cv_header_magic_h=no
EXTRA_ENV += lt_cv_path_SED=/usr/bin/sed
EXTRA_ENV += STRIP=/usr/bin/strip
MAKE_FLAGS +=	 ac_cv_path_mkdir=/bin/mkdir

CONFIGURE_ENV += ${EXTRA_ENV}
MAKE_ENV += ${EXTRA_ENV}

.if ${MACHINE_ARCH} == "powerpc"
# powerpc lld can't link C++ code from gcc, "ld: error: relocation
# refers to a discarded section:" .data.rel.ro.* or
# .sdata.DW.ref.__gxx_personality_v0
USE_LLD = No
CONFIGURE_ENV += LDFLAGS="-Wl,--relax"
.elif ${MACHINE_ARCH:Mi386}
USE_LLD = No
# ld.lld: error: relocation R_386_PC32 cannot be used against symbol 'hash_set<nofree_string_hash, false, default_hash_traits<nofree_string_hash>>::hash_set(unsigned long, bool)'; recompile with -fPIC, etc.
.endif

# Note: the configure target passes CFLAGS to the configure script anyways.

CFLAGS = -O2 -g

CONFIGURE_ARGS += \
	--verbose \
	--program-transform-name=s,^,e, \
	--disable-nls  \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-libssp \
	--disable-tls \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--with-gmp="${LOCALBASE}" \
	--enable-languages=${LANGS} \
	--disable-libstdcxx-pch \
	--enable-standard-branch-protection \
	--without-isl

# Enable the stack protector by default where supported
.if ${MACHINE_ARCH} != "riscv64"
CONFIGURE_ARGS += \
	--enable-default-ssp
.endif

# PICFLAG broke gcc build after
# https://gcc.gnu.org/cgit/gcc/commit/?id=b6cb10af12cf869c1ae348c0e5cb2d364ef0abce
.if "${PICFLAG}" != ""
CONFIGURE_ARGS += \
	--enable-host-pie \
	--enable-default-pie
.endif
PICFLAG=

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp

SEPARATE_BUILD = Yes

USE_GMAKE = yes

.if ${FLAVOR:Mfull}
# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET = bootstrap
.else
# skip the stage2/stage3 bullshit under normal circumstances
ALL_TARGET = bootstrap2
.endif

MAKE_FLAGS += libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'

.for _a in ${ONLY_FOR_ARCHS}
PKG_ARGS += -D${_a}=0
.endfor

PKG_ARGS += -D${MACHINE_ARCH}=1

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DX86=1
.else
PKG_ARGS += -DX86=0
.endif

# Ada 128bit support
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "mips64" || \
	${MACHINE_ARCH} == "sparc64"
PKG_ARGS += -D128BIT=1
.else
PKG_ARGS += -D128BIT=0
.endif

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "alpha" || \
	${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "powerpc" ||	${MACHINE_ARCH} == "powerpc64" || \
	${MACHINE_ARCH} == "sh" || ${MACHINE_ARCH} == "sparc64"
PKG_ARGS += -DITM=1
.else
PKG_ARGS += -DITM=0
.endif

# depends on __float128
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS += -DQUADMATH=1
.else
PKG_ARGS += -DQUADMATH=0
.endif

RUN_DEPENDS +=		${BUILD_PKGPATH},-main
WANTLIB =		c gmp m mpc mpfr z

RUN_DEPENDS-main +=	${BUILD_PKGPATH},-libs
RUN_DEPENDS-libs =

WANTLIB-main =		${WANTLIB}
WANTLIB-ada =		${WANTLIB} pthread util
WANTLIB-libs =		m pthread

LIB_DEPENDS +=		devel/gmp,no_cxx,bootstrap \
			devel/mpfr \
			devel/libmpc
LIB_DEPENDS-libs =

post-extract:
.for f in egcc eg++
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
.for f in gnatbind gnatmake gnatlink
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
	rm -rf ${WRKDIR}/bootstrap/lib/gcc/*-unknown-openbsd*/$V/include-fixed
	ln -sf /usr/bin/nm ${WRKDIR}/bin/enm
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> \
		${WRKSRC}/libversions
.endfor
.if ${BUILD_PACKAGES:M-ada}
	perl -pi -e 's,^#define (_GCOMPILER_LIBCXX_HAVE_GETS) .*,/* #undef $$1 */,' \
		${WRKDIR}/bootstrap/include/c++/*/*/bits/c++config.h
.endif
	-chmod 644 ${WRKDIR}/bootstrap/system-libs/lib*.so* # XXX
	-cp `ls /usr/lib/libc.so.* | sort -t . -V | tail -1` ${WRKDIR}/bootstrap/system-libs/libc.so.* # XXX

# See: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=121386
	rm ${WRKSRC}/gcc/gengtype-lex.cc

post-install:
.if ${BUILD_PACKAGES:M-ada}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adainclude
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adalib
.endif
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include-fixed
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcc.a
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcov.a

.include <bsd.port.mk>

ADA_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-ada}.tgz
GCC_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-main}.tgz
GXX_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-c++}.tgz

.PHONY: bootstrap

bootstrap: ${ADA_PACKAGE} ${GCC_PACKAGE} ${GXX_PACKAGE}
	${_PBUILD} rm -rf ${WRKDIR}/prepare
	${_PBUILD} mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cd ${WRKDIR}/prepare/bootstrap && ${_PBUILD} tar xzf ${ADA_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && ${_PBUILD} tar xzf ${GCC_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && ${_PBUILD} tar xzf ${GXX_PACKAGE}
	${_PBUILD} rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man,share}
	${_PBUILD} rm -rf ${WRKDIR}/prepare/bootstrap/lib/gcc/*-openbsd*/$V/include-fixed
	for f in \
	    `ldd ${WRKDIR}/prepare/bootstrap/libexec/gcc/*-openbsd*/$V/cc1 | \
	    awk '$$3 == "rlib" { print $$7 }'`; do \
		${_PBUILD} cp $$f ${WRKDIR}/prepare/bootstrap/system-libs/; \
	done
	cd ${WRKDIR}/prepare && tar cf - bootstrap | \
		${_PBUILD} xz -T0 | \
		${_PFETCH} tee ${FULLDISTDIR}/bootstrap-${MACHINE_ARCH}-${PKGNAME}.tar.xz > /dev/null
