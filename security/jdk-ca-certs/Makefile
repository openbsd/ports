# this list should match where the jdk can be built
ONLY_FOR_ARCHS=	i386 amd64 aarch64 sparc64

COMMENT=	common certificate authority certs for the jdks

# whenever /usr/src/lib/libcrypto/cert.pem changes, copy it
# to files dir and bump VER
VER=		1.0
PKGNAME=	jdk-ca-certs-${VER}

CATEGORIES=	security java

# generated file from cert.pem
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	security/openssl/4.0

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	eopenssl40 pkcs12 -export -in ${FILESDIR}/cert.pem \
		-out ${PREFIX}/share/examples/jdk-cacerts \
		-jdktrust anyExtendedKeyUsage \
		-certpbe NONE -nomac -nokeys \
		-passout pass:

.include <bsd.port.mk>
