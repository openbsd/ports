# XXX Don't use security/openssl/X in other ports unless there's a big problem
# or a specific reason why not to use LibreSSL with that port - it is easy to
# create runtime library conflicts. In those special cases, please add comments
# to the port explaining why OpenSSL is needed instead of LibreSSL and discuss
# such a change on ports/ICB.

.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY =	Yes
.endif

V=		4.1.0
PKGNAME=	openssl-${V}
PKGSPEC=	openssl->=4.1v0,<4.2v0
EPOCH=		0

SHLIBVER=	50.0
SHARED_LIBS=	crypto ${SHLIBVER} \
		ssl ${SHLIBVER}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	c pthread

DEBUG_PACKAGES = ${BUILD_PACKAGES}

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--openssldir=/etc/ssl \
			no-rc5 \
			shared

# Avoid T4 assembly issues https://github.com/openssl/openssl/issues/20523
.if ${MACHINE_ARCH} == sparc64
CONFIGURE_ARGS+=	no-asm
.endif

# Assembly assumes it is on arm v8, which is not the case
.if ${MACHINE_ARCH} == arm
CONFIGURE_ARGS+=	no-asm
.endif

INSTALL_TARGET=		install_sw install_ssldirs install_man_docs

SUBST_VARS+=		SHLIBVER

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		INCLUDEDIR="include/eopenssl41" \
		LDFLAGS="${LDFLAGS}" \
		LIBDIR="lib/eopenssl41" \
		MANDIR=${PREFIX}/lib/eopenssl41/man \
		MANSUFFIX=
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/eopenssl41

post-patch:
	sed -i 's,^SHLIB_VERSION=.*,SHLIB_VERSION=${SHLIBVER},' \
	    ${WRKSRC}/VERSION.dat

pre-configure:
	${SUBST_CMD} ${WRKSRC}/exporters/cmake/OpenSSLConfig.cmake.in

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl41
	mv ${WRKINST}/etc/ssl ${PREFIX}/share/eopenssl41
.for i j in openssl eopenssl41 libssl libessl41 libcrypto libecrypto41
	mv ${PREFIX}/lib/eopenssl41/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl41/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl41
	rm ${PREFIX}/lib/eopenssl41/lib{crypto,ssl}.so
	for i in ${PREFIX}/share/eopenssl41/*.dist; do rm $${i%.dist}; done
	rmdir ${PREFIX}/lib/eopenssl41/pkgconfig

.include <bsd.port.mk>
