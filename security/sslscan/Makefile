# $OpenBSD: Makefile,v 1.12 2016/06/01 22:37:58 sthen Exp $

COMMENT=	SSL port scanner

V=		1.11.2
DISTNAME=	sslscan-$V
DISTFILES=	${DISTNAME}{$V-rbsec}.tar.gz
WRKDIST=	${WRKDIR}/${DISTNAME}-rbsec

CATEGORIES=	security net

HOMEPAGE=	https://github.com/rbsec/sslscan

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	openssl
FLAVOR?=

WANTLIB += c

MASTER_SITES=	https://github.com/rbsec/sslscan/archive/
USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	BINDIR=${TRUEPREFIX}/bin \
		MANDIR=${TRUEPREFIX}/man \
		GIT_VERSION="$V" \
		CC="${CC}" SUFFIX="${SUFFIX}"

SUBST_VARS=	SUFFIX

.if ${FLAVOR:Mopenssl}
BUILD_DEPENDS=	security/openssl:patch
SUFFIX=		-openssl
FULLPKGNAME=	sslscan-openssl-$V
STATIC_BUILD=	TRUE
ALL_TARGET=	openssl/libcrypto.a sslscan
MAKE_FLAGS+=	STATIC_BUILD=TRUE
CFLAGS+=	-nostdinc -I${WRKSRC}/openssl/include -I/usr/include

post-extract:
	ln -s ${WRKDIR}/security/openssl/openssl-* ${WRKSRC}/openssl
	rm -f ${WRKSRC}/openssl/Makefile
.else
WANTLIB +=	crypto ssl
.endif

.include <bsd.port.mk>
