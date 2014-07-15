# $OpenBSD: Makefile,v 1.1.1.1 2014/07/15 22:23:16 sthen Exp $

COMMENT=	TLS/SSL library and tools

V=		1.0.1h
DISTNAME=	openssl-$V
PKGNAME=	openssl-$V

SHLIBVER=	0.0
SHARED_LIBS=	crypto ${SHLIBVER} \
		ssl ${SHLIBVER}

CATEGORIES=	security net

HOMEPAGE=	http://www.openssl.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# OpenSSL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://www.openssl.org/source/

FAKE_FLAGS=	MANDIR=${PREFIX}/lib/eopenssl/man

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--openssldir=${PREFIX}/share/eopenssl \
	                --install_prefix=${WRKINST} \
			no-threads \
			no-rc5 no-krb5 no-ssl2

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

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS} == "Yes"
CONFIGURE_ARGS+=	no-shared
.else
CONFIGURE_ARGS+=	shared
.endif

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
