PORTROACH=	limit:^3
V=		3.0.1
PKGNAME=	openssl-${V}
PKGSPEC=	openssl->=3,<3.1

SHLIBVER=	12.1
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
			--openssldir=${PREFIX}/share/eopenssl30 \
			no-threads no-rc5 no-ssl3 \
			no-devcryptoeng \
			shared

INSTALL_TARGET=		install_sw install_ssldirs

SUBST_VARS+=		MAN_PREFIX SHLIBVER

.if ${FLAVOR:Mno_man}
MAN_PREFIX=		"@comment "
.else
MAN_PREFIX=		@man lib/eopenssl30/man
INSTALL_TARGET+=	install_man_docs
.endif

# install to unusual directory name - this port is *not* intended to be
# picked up by configure scripts without explicitly CPPFLAGS/LDFLAGS.
# common names like lib/openssl, openssl/lib, etc, *do* get picked up.
MAKE_FLAGS+=	CC="${CC}" \
		LDFLAGS="${LDFLAGS}" \
		LIBDIR="lib/eopenssl30" \
		MANDIR=${PREFIX}/lib/eopenssl30/man \
		MANSUFFIX=
LDFLAGS+=	-Wl,-rpath,${TRUEPREFIX}/lib/eopenssl30

post-patch:
	sed -i 's,^SHLIB_VERSION=.*,SHLIB_VERSION=${SHLIBVER},' \
	    ${WRKSRC}/VERSION.dat

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f ${MAKE_FILE} depend

# include/openssl and pkgconfig files are moved here, doing that in
# OpenSSL's build infrastructure needs a bunch more patching.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/eopenssl30
.for i j in openssl eopenssl30 libssl libessl30 libcrypto libecrypto30
	mv ${PREFIX}/lib/eopenssl30/pkgconfig/$i.pc ${PREFIX}/lib/pkgconfig/$j.pc
.endfor
	mv ${PREFIX}/include/openssl ${PREFIX}/include/eopenssl30/
	mv ${PREFIX}/bin/openssl ${PREFIX}/bin/eopenssl30
	mv ${PREFIX}/bin/c_rehash ${PREFIX}/bin/c_rehash30
	rm ${PREFIX}/lib/eopenssl30/lib{crypto,ssl}.so
	for i in ${PREFIX}/share/eopenssl30/*.dist; do rm $${i%.dist}; done
	rmdir ${PREFIX}/lib/eopenssl30/pkgconfig

.include <bsd.port.mk>
