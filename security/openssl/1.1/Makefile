# $OpenBSD: Makefile,v 1.13 2020/03/17 18:38:39 sthen Exp $

PORTROACH=	limit:^1\.1\.[0-9][a-z] skipb:0 skipv:1.1.1
V=		1.1.1e

SHLIBVER=	11.5
SHARED_LIBS=	crypto ${SHLIBVER} \
		ssl ${SHLIBVER}

WANTLIB=	c

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--openssldir=${PREFIX}/share/eopenssl11 \
			no-threads no-rc5 no-ssl3 \
			no-devcryptoeng \
			shared

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
	rm -rf ${PREFIX}/share/doc/openssl/html/man*
	cd ${PREFIX}; rmdir share/doc/openssl{/html,} lib/eopenssl11/pkgconfig

.include <bsd.port.mk>
