# $OpenBSD: Makefile,v 1.7 2015/09/10 14:08:44 sthen Exp $

COMMENT=	SSL port scanner

V=		1.10.6
DISTNAME=	sslscan-$V
DISTFILES=	${DISTNAME}{$V-rbsec}.tar.gz
WRKDIST=	${WRKDIR}/${DISTNAME}-rbsec

CATEGORIES=	security net

HOMEPAGE=	https://github.com/rbsec/sslscan

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	openssl
FLAVOR?=

WANTLIB += c

.if ${FLAVOR:Mopenssl}
LIB_DEPENDS=	security/openssl
WANTLIB +=	lib/eopenssl/crypto lib/eopenssl/ssl
.else
WANTLIB +=	crypto ssl
.endif

MASTER_SITES=	https://github.com/rbsec/sslscan/archive/
USE_GMAKE=	Yes

MAKE_FLAGS=	BINPATH=${WRKINST}${PREFIX}/bin/ \
		MANPATH=${WRKINST}${PREFIX}/man/ \
		GIT_VERSION="$V" \
		CC="${CC}"

.if ${FLAVOR:Mopenssl}
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl" \
		LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
