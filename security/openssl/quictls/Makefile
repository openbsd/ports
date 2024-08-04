.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY =	Yes
.endif

# skip PORTROACH limit for newest version
#PORTROACH=	limit:^3\.1

V=		3.1.5
DISTNAME=	openssl-${V}-quic1
WRKDIST=	${WRKDIR}/openssl-${DISTNAME}
EOPENSSL_V=	qopenssl31
REVISION=	6

SITES=		https://github.com/quictls/openssl/archive/refs/tags/
PKGNAME=	quictls-${V}
PKGSPEC=	quictls->=3.1,<3.2

HOMEPAGE =	https://quictls.github.io/

SHLIBVER=	0.0
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

# Assembly assumes it is on arm v8, which is not the case
.if ${MACHINE_ARCH} == arm
CONFIGURE_ARGS+=	no-asm
.endif

INSTALL_TARGET=		install_sw install_ssldirs install_man_docs

SUBST_VARS+=		EOPENSSL_V SHLIBVER

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		LDFLAGS="${LDFLAGS}" \
		LIBDIR="lib/qopenssl31" \
		MANDIR=${PREFIX}/lib/qopenssl31/man \
		MANSUFFIX=
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/qopenssl31

post-patch:
	sed -i 's,^SHLIB_VERSION=.*,SHLIB_VERSION=${SHLIBVER},' \
	    ${WRKSRC}/VERSION.dat

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/qopenssl31
	mv ${WRKINST}/etc/ssl ${PREFIX}/share/qopenssl31
.for i j in openssl qopenssl31 libssl libqssl31 libcrypto libqcrypto31
	mv ${PREFIX}/lib/qopenssl31/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/qopenssl31/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/qopenssl31
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/bin/qc_rehash31
	rm ${PREFIX}/lib/qopenssl31/lib{crypto,ssl}.so
	for i in ${PREFIX}/share/qopenssl31/*.dist; do rm $${i%.dist}; done
	rmdir ${PREFIX}/lib/qopenssl31/pkgconfig

.include <bsd.port.mk>
