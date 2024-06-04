# static link, need bump on update:
# mail/postfix/stable, sysutils/borgbackup/2.0

.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY =	Yes
.endif

# skip PORTROACH limit for newest version
#PORTROACH=	limit:^3\.2
V=		3.2.2
PKGNAME=	openssl-${V}
PKGSPEC=	openssl->=3.2v0,<3.3v0
EPOCH=		0

SHLIBVER=	22.0
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
		LIBDIR="lib/eopenssl32" \
		MANDIR=${PREFIX}/lib/eopenssl32/man \
		MANSUFFIX=
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/eopenssl32

post-patch:
	sed -i 's,^SHLIB_VERSION=.*,SHLIB_VERSION=${SHLIBVER},' \
	    ${WRKSRC}/VERSION.dat

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl32
	mv ${WRKINST}/etc/ssl ${PREFIX}/share/eopenssl32
.for i j in openssl eopenssl32 libssl libessl32 libcrypto libecrypto32
	mv ${PREFIX}/lib/eopenssl32/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl32/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl32
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/bin/c_rehash32
	rm ${PREFIX}/lib/eopenssl32/lib{crypto,ssl}.so
	for i in ${PREFIX}/share/eopenssl32/*.dist; do rm $${i%.dist}; done
	rmdir ${PREFIX}/lib/eopenssl32/pkgconfig

.include <bsd.port.mk>
