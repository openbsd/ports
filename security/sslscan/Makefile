COMMENT=	SSL/TLS scanner (identify version, ciphers, etc)

.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=	Yes
.endif

GH_ACCOUNT=	rbsec
GH_PROJECT=	sslscan
GH_TAGNAME=	2.1.4
REVISION=	1

CATEGORIES=	security net

HOMEPAGE=	https://github.com/rbsec/sslscan

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c pthread z

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	BINDIR=${TRUEPREFIX}/bin \
		MANDIR=${TRUEPREFIX}/man \
		GIT_VERSION="${GH_TAGNAME}" \
		CC="${CC}"

BUILD_DEPENDS=	security/openssl/3.2:patch
ALL_TARGET=	static
CFLAGS+=	-I${WRKSRC}/openssl/include

post-extract:
	ln -s ${WRKDIR}/security/openssl/*/openssl-* ${WRKSRC}/openssl
	-mkdir -p ${WRKSRC}/openssl/.git
	rm -f ${WRKSRC}/openssl/Makefile
	touch ${WRKSRC}/.openssl.is.fresh

.include <bsd.port.mk>
