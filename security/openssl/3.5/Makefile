# XXX Don't use security/openssl/X in other ports unless there's a big problem
# or a specific reason why not to use LibreSSL with that port - it is easy to
# create runtime library conflicts. In those special cases, please add comments
# to the port explaining why OpenSSL is needed instead of LibreSSL and discuss
# such a change on ports/ICB.

# static link, need bump on update:
# mail/postfix/stable security/sslscan sysutils/borgbackup/2.0

.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY =	Yes
.endif

# skip PORTROACH limit for newest version
#PORTROACH=	limit:^3\.2
V=		3.5.3
PKGNAME=	openssl-${V}
PKGSPEC=	openssl->=3.5v0,<3.6v0
EPOCH=		0

SHLIBVER=	37.0
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
			no-rc5 no-ssl3 \
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

SUBST_VARS+=		SHLIBVER

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		INCLUDEDIR="include/eopenssl35" \
		LDFLAGS="${LDFLAGS}" \
		LIBDIR="lib/eopenssl35" \
		MANDIR=${PREFIX}/lib/eopenssl35/man \
		MANSUFFIX=
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/eopenssl35

post-patch:
	sed -i 's,^SHLIB_VERSION=.*,SHLIB_VERSION=${SHLIBVER},' \
	    ${WRKSRC}/VERSION.dat

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl35
	mv ${WRKINST}/etc/ssl ${PREFIX}/share/eopenssl35
.for i j in openssl eopenssl35 libssl libessl35 libcrypto libecrypto35
	mv ${PREFIX}/lib/eopenssl35/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl35/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl35
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/bin/c_rehash35
	rm ${PREFIX}/lib/eopenssl35/lib{crypto,ssl}.so
	for i in ${PREFIX}/share/eopenssl35/*.dist; do rm $${i%.dist}; done
	rmdir ${PREFIX}/lib/eopenssl35/pkgconfig

.include <bsd.port.mk>
