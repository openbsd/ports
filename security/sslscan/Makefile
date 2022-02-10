# $OpenBSD: Makefile,v 1.37 2022/02/10 21:01:52 sthen Exp $

COMMENT=	SSL/TLS scanner (identify version, ciphers, etc)

GH_ACCOUNT=	rbsec
GH_PROJECT=	sslscan
GH_TAGNAME=	2.0.11

CATEGORIES=	security net

HOMEPAGE=	https://github.com/rbsec/sslscan

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c pthread z

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	BINDIR=${TRUEPREFIX}/bin \
		MANDIR=${TRUEPREFIX}/man \
		GIT_VERSION="${GH_TAGNAME}" \
		CC="${CC}"

BUILD_DEPENDS=	security/openssl/1.1:patch
ALL_TARGET=	static
CFLAGS+=	-I${WRKSRC}/openssl/include

post-extract:
	ln -s ${WRKDIR}/security/openssl/1.1/openssl-* ${WRKSRC}/openssl
	-mkdir -p ${WRKSRC}/openssl/.git
	rm -f ${WRKSRC}/openssl/Makefile
	touch ${WRKSRC}/.openssl.is.fresh

.include <bsd.port.mk>
