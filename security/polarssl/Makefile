# $OpenBSD: Makefile,v 1.19 2018/02/06 10:26:31 sthen Exp $

COMMENT=	SSL library with an intuitive API and readable source code

DISTNAME=	mbedtls-2.7.0
EXTRACT_SUFX=	-gpl.tgz

# check SOVERSION
SHARED_LIBS +=  mbedtls                   3.1 # 2.7
SHARED_LIBS +=  mbedcrypto                2.0 # 2.7
SHARED_LIBS +=  mbedx509                  1.0 # 2.7

CATEGORIES=	security

HOMEPAGE=	https://tls.mbed.org/

# Dual licensed: GPLv2+/Commercial, Apache v2 is also available
PERMIT_PACKAGE_CDROM=	Yes

# libssl/libcrypto are used for polarssl_o_p_test only
WANTLIB += c pthread

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
