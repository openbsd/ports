.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY =	Yes
.endif

PORTROACH=	limit:^3\.1
V=		3.1.6
PKGNAME=	openssl-${V}
PKGSPEC=	openssl->=3.1v0,<3.2v0
EPOCH=		0

SHLIBVER=	15.1
SHARED_LIBS=	crypto ${SHLIBVER} \
		ssl ${SHLIBVER}

WANTLIB=	c

DEBUG_PACKAGES = ${BUILD_PACKAGES}

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--openssldir=/etc/ssl \
			no-threads no-rc5 no-ssl3 \
			no-devcryptoeng \
			shared

# Avoid T4 assembly issues https://github.com/openssl/openssl/issues/20523
.if ${MACHINE_ARCH} == sparc64
CONFIGURE_ARGS+=	no-asm
.endif

INSTALL_TARGET=		install_sw install_ssldirs install_man_docs

SUBST_VARS+=		SHLIBVER

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		LDFLAGS="${LDFLAGS}" \
		LIBDIR="lib/eopenssl31" \
		MANDIR=${PREFIX}/lib/eopenssl31/man \
		MANSUFFIX=
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/eopenssl31

post-patch:
	sed -i 's,^SHLIB_VERSION=.*,SHLIB_VERSION=${SHLIBVER},' \
	    ${WRKSRC}/VERSION.dat

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl31
	mv ${WRKINST}/etc/ssl ${PREFIX}/share/eopenssl31
.for i j in openssl eopenssl31 libssl libessl31 libcrypto libecrypto31
	mv ${PREFIX}/lib/eopenssl31/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl31/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl31
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/bin/c_rehash31
	rm ${PREFIX}/lib/eopenssl31/lib{crypto,ssl}.so
	for i in ${PREFIX}/share/eopenssl31/*.dist; do rm $${i%.dist}; done
	rmdir ${PREFIX}/lib/eopenssl31/pkgconfig

.include <bsd.port.mk>
