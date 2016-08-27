# $OpenBSD: Makefile,v 1.16 2016/08/27 07:46:50 juanfra Exp $

COMMENT=	SSL library with an intuitive API and readable source code

DISTNAME=	mbedtls-2.2.1
REVISION=	0
EXTRACT_SUFX=	-gpl.tgz

# check SOVERSION
SHARED_LIBS +=	mbedtls                  2.1
SHARED_LIBS +=  mbedcrypto                0.0 # 2.1
SHARED_LIBS +=  mbedx509                  0.0 # 2.1

CATEGORIES=	security

HOMEPAGE=	https://tls.mbed.org/

# Dual licensed: GPLv2+/Commercial
# name changed from PolarSSL to mbed TLS after the ARM acquisition and a
# future update will change the license to Apache.
PERMIT_PACKAGE_CDROM=	Yes

# libssl/libcrypto are used for polarssl_o_p_test only
WANTLIB += c crypto pthread ssl

MASTER_SITES=	https://tls.mbed.org/download/

MODULES=	devel/cmake

CONFIGURE_ARGS=		-DUSE_SHARED_MBEDTLS_LIBRARY=ON \
			-DLINK_WITH_PTHREAD=ON

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mbedtls
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ChangeLog \
	    ${PREFIX}/share/doc/mbedtls
	mv ${PREFIX}/bin ${PREFIX}/share/examples/mbedtls
	(echo "These programs are useful code samples for a crypto expert, but";\
	echo "should not be relied upon by the normal end-user.") \
	> ${PREFIX}/share/examples/mbedtls/README

.include <bsd.port.mk>
