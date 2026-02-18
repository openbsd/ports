PORTROACH=	limit:^3\.6\.

COMMENT=	TLS library with an intuitive API and readable source code

V=		3.6.5
REVISION=	1
DISTNAME=	mbedtls-${V}

# check SOVERSION
SHARED_LIBS +=  mbedtls		8.0
SHARED_LIBS +=  mbedcrypto	6.0
SHARED_LIBS +=  mbedx509	4.0

CATEGORIES=	security

HOMEPAGE=	https://www.trustedfirmware.org/projects/mbed-tls/

# Apache v2 or GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

SITES =		https://github.com/Mbed-TLS/mbedtls/releases/download/mbedtls-${V}/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS=		-DUSE_SHARED_MBEDTLS_LIBRARY=ON \
			-DLINK_WITH_PTHREAD=ON

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mbedtls
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ChangeLog \
	    ${PREFIX}/share/doc/mbedtls
	mv ${PREFIX}/bin ${PREFIX}/share/examples/mbedtls
	(echo "These programs are useful code samples for a crypto expert, but";\
	echo "should not be relied upon by the normal end-user.") \
	> ${PREFIX}/share/examples/mbedtls/README

.include <bsd.port.mk>
