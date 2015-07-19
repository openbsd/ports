# $OpenBSD: Makefile,v 1.5 2015/07/19 00:07:15 sthen Exp $

COMMENT=	SSL port scanner

DISTNAME=	sslscan-1.8.2
REVISION=	2
EXTRACT_SUFX=	.tgz

CATEGORIES=	security net

HOMEPAGE=	http://sourceforge.net/projects/sslscan/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c lib/eopenssl/crypto lib/eopenssl/ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sslscan/}

LIB_DEPENDS=	security/openssl

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl" \
		LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"

NO_TEST=	Yes

.include <bsd.port.mk>
