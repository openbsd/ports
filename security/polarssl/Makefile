# $OpenBSD: Makefile,v 1.25 2018/11/26 15:18:28 bket Exp $

COMMENT=	SSL library with an intuitive API and readable source code

DISTNAME=	mbedtls-2.14.0
EXTRACT_SUFX=	-gpl.tgz

# check SOVERSION
SHARED_LIBS +=  mbedtls                   6.0 # 12
SHARED_LIBS +=  mbedcrypto                4.0 # 3
SHARED_LIBS +=  mbedx509                  3.0 # 0

CATEGORIES=	security

HOMEPAGE=	https://tls.mbed.org/

# Dual licensed: GPLv2+/Commercial, Apache v2 is also available
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MASTER_SITES=	https://tls.mbed.org/download/

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

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
