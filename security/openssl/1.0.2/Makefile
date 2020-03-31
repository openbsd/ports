# $OpenBSD: Makefile,v 1.8 2020/03/31 14:50:08 tb Exp $

PORTROACH=	limit:^1\.0\.
V=		1.0.2u
REVISION=	1

SHLIBVER=	6.2
SHARED_LIBS=	crypto ${SHLIBVER} \
		ssl ${SHLIBVER}

WANTLIB=	c

FAKE_FLAGS=	MANDIR=${PREFIX}/lib/eopenssl/man

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--openssldir=${PREFIX}/share/eopenssl \
	                --install_prefix=${WRKINST} \
			no-threads no-krb5 \
			no-rc5 no-ssl2 no-ssl3 \
			shared

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		LIBDIR="lib/eopenssl" \
		LIBRPATH="${TRUEPREFIX}/lib/eopenssl" \
		PORTCFLAGS="${CFLAGS}" \
		SHLIB_VERSION_NUMBER=${SHLIBVER} \
		SHLIB_MAJOR=${SHLIBVER:R} \
		SHLIB_MINOR=${SHLIBVER:E}
MAKE_ENV+=	LIBRPATH="${TRUEPREFIX}/lib/eopenssl"

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl
.for i j in openssl eopenssl libssl libessl libcrypto libecrypto
	mv ${PREFIX}/lib/eopenssl/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	rmdir ${PREFIX}/lib/eopenssl/pkgconfig/
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/share/eopenssl/misc/
	rm -f ${PREFIX}/lib/eopenssl/lib{crypto,ssl}.so

.include <bsd.port.mk>
