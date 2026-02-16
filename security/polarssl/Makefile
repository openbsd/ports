PORTROACH=	limit:^2\.28

COMMENT=	SSL library with an intuitive API and readable source code

GH_ACCOUNT=	Mbed-TLS
GH_PROJECT=	mbedtls
GH_TAGNAME=	mbedtls-2.28.10
DISTNAME=	${GH_TAGNAME}

# check SOVERSION
SHARED_LIBS +=  mbedtls		7.1
SHARED_LIBS +=  mbedcrypto	5.1
SHARED_LIBS +=  mbedx509	3.3

CATEGORIES=	security

HOMEPAGE=	https://www.trustedfirmware.org/projects/mbed-tls/

# Apache v2 or GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

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
