# $OpenBSD: Makefile,v 1.6 2015/09/10 13:55:51 sthen Exp $

COMMENT=	SSL port scanner

V=		1.10.6
DISTNAME=	sslscan-$V
DISTFILES=	${DISTNAME}{$V-rbsec}.tar.gz
WRKDIST=	${WRKDIR}/${DISTNAME}-rbsec

CATEGORIES=	security net

HOMEPAGE=	https://github.com/rbsec/sslscan

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c lib/eopenssl/crypto lib/eopenssl/ssl

MASTER_SITES=	https://github.com/rbsec/sslscan/archive/
USE_GMAKE=	Yes

LIB_DEPENDS=	security/openssl

MAKE_FLAGS=	BINPATH=${WRKINST}${PREFIX}/bin/ \
		MANPATH=${WRKINST}${PREFIX}/man/ \
		GIT_VERSION="$V" \
		CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl" \
		LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"

NO_TEST=	Yes

.include <bsd.port.mk>
