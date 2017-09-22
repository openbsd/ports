# $OpenBSD: Makefile,v 1.14 2017/09/22 21:30:32 sthen Exp $

COMMENT=	SSL port scanner

V=		1.11.8
REVISION=	0
GH_ACCOUNT=	rbsec
GH_PROJECT=	sslscan
GH_TAGNAME=	$V-rbsec
DISTNAME=	sslscan-$V

CATEGORIES=	security net

HOMEPAGE=	https://github.com/rbsec/sslscan

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	openssl
FLAVOR?=

WANTLIB += c

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	BINDIR=${TRUEPREFIX}/bin \
		MANDIR=${TRUEPREFIX}/man \
		GIT_VERSION="$V" \
		CC="${CC}"

SUBST_VARS=	SUFFIX

.if ${FLAVOR:Mopenssl}
BUILD_DEPENDS=	security/openssl:patch
SUFFIX=		-openssl
FULLPKGNAME=	sslscan-openssl-$V
STATIC_BUILD=	TRUE
ALL_TARGET=	openssl/libcrypto.a sslscan
MAKE_FLAGS+=	STATIC_BUILD=TRUE
CFLAGS+=	-nostdinc -I${WRKSRC}/openssl/include -I/usr/include
WANTLIB +=	z

post-extract:
	ln -s ${WRKDIR}/security/openssl/openssl-* ${WRKSRC}/openssl
	rm -f ${WRKSRC}/openssl/Makefile
.else
WANTLIB +=	crypto ssl
.endif

post-install:
	mv ${PREFIX}/bin/sslscan ${PREFIX}/bin/sslscan${SUFFIX}
	mv ${PREFIX}/man/man1/sslscan.1 ${PREFIX}/man/man1/sslscan${SUFFIX}.1

.include <bsd.port.mk>
