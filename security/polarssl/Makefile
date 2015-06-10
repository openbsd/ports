# $OpenBSD: Makefile,v 1.8 2015/06/10 09:28:08 benoit Exp $

COMMENT=	SSL library with an intuitive API and readable source code

DISTNAME=	mbedtls-1.3.11
EXTRACT_SUFX=	-gpl.tgz

# check SOVERSION
SHARED_LIBS +=	mbedtls                  1.1

CATEGORIES=	security

HOMEPAGE=	https://polarssl.org/

# Dual licensed: GPLv2+/Commercial
# name changed from PolarSSL to mbed TLS after the ARM acquisition and a
# future update will change the license to Apache.
PERMIT_PACKAGE_CDROM=	Yes

# libssl/libcrypto are used for polarssl_o_p_test only
WANTLIB += c crypto pthread ssl

MASTER_SITES=	https://polarssl.org/download/

MODULES=	devel/cmake

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} != "yes"
CONFIGURE_ARGS+= -DUSE_SHARED_MBEDTLS_LIBRARY=ON
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mbedtls
	cd ${WRKSRC}; ${INSTALL_DATA} README.rst ChangeLog \
	    ${PREFIX}/share/doc/mbedtls
	mv ${PREFIX}/bin ${PREFIX}/share/examples/mbedtls
	(echo "These programs are useful code samples for a crypto expert, but";\
	echo "should not be relied upon by the normal end-user.") \
	> ${PREFIX}/share/examples/mbedtls/README

.include <bsd.port.mk>
