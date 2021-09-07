# $OpenBSD: Makefile,v 1.31 2021/09/07 20:54:33 tb Exp $

# bump security/sslscan if updating
PORTROACH=	limit:^1\.1\.[0-9][a-z] skipb:0 skipv:1.1.1
V=		1.1.1l
PKGSPEC=	openssl->=1.1.0,<1.2
REVISION=	0

SHLIBVER=	11.6
SHARED_LIBS=	crypto ${SHLIBVER} \
		ssl ${SHLIBVER}

WANTLIB=	c

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# dev flavour, pod2man is pretty slow on these
FLAVOR?=
FLAVORS=	no_man

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--openssldir=${PREFIX}/share/eopenssl11 \
			enable-ssl-trace \
			no-threads no-rc5 no-ssl3 \
			no-devcryptoeng \
			shared

INSTALL_TARGET=		install_sw install_ssldirs
SUBST_VARS+=		MAN_PREFIX
.if ${FLAVOR:Mno_man}
MAN_PREFIX=		"@comment "
.else
MAN_PREFIX=		@man lib/eopenssl11/man
INSTALL_TARGET+=	install_man_docs
.endif

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		LDFLAGS="${LDFLAGS}" \
		LIBDIR="lib/eopenssl11" \
		MANDIR=${PREFIX}/lib/eopenssl11/man \
		SHLIB_VERSION_NUMBER=${SHLIBVER} \
		SHLIB_MAJOR=${SHLIBVER:R} \
		SHLIB_MINOR=${SHLIBVER:E}
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/eopenssl11

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl11
.for i j in openssl eopenssl11 libssl libessl11 libcrypto libecrypto11
	mv ${PREFIX}/lib/eopenssl11/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl11/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl11
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/bin/c_rehash11
	rm -f ${PREFIX}/lib/eopenssl11/lib{crypto,ssl}.so
	rmdir ${PREFIX}/lib/eopenssl11/pkgconfig

.include <bsd.port.mk>
