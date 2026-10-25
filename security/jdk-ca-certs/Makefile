# this list should match where the jdk can be built
ONLY_FOR_ARCHS=	i386 amd64 aarch64 sparc64

COMMENT=	common certificate authority certs for the jdks

# whenever /usr/src/lib/libcrypto/cert.pem changes, copy it
# to files dir and bump VER
VER=		1.0
PKGNAME=	jdk-ca-certs-${VER}

GH_ACCOUNT=	botovq
GH_PROJECT=	jdk-ca-certs
GH_TAGNAME=	v0.0.2

CATEGORIES=	security java

# ISC
PERMIT_PACKAGE=	Yes

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${WRKSRC}/jdk-ca-certs ${FILESDIR}/cert.pem \
		${PREFIX}/share/examples/jdk-cacerts

.include <bsd.port.mk>
