# $OpenBSD: Makefile,v 1.9 2015/10/21 13:23:54 sthen Exp $

COMMENT=	SSL port scanner

V=		1.11.0
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

MAKE_FLAGS=	BINPATH=${WRKINST}${PREFIX}/bin/ \
		MANPATH=${WRKINST}${PREFIX}/man/ \
		GIT_VERSION="$V" \
		CC="${CC}" SUFFIX="${SUFFIX}"

SUBST_VARS=	SUFFIX

.if ${FLAVOR:Mopenssl}
SUFFIX=		-openssl
FULLPKGNAME=	sslscan-openssl-$V
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl" \
		LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"
LIB_DEPENDS=	security/openssl
WANTLIB +=	lib/eopenssl/crypto lib/eopenssl/ssl
.else
WANTLIB +=	crypto ssl
.endif

.include <bsd.port.mk>
