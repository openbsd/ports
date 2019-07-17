# $OpenBSD: Makefile,v 1.32 2019/07/17 14:46:33 danj Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}
REVISION=	0

SHARED_LIBS +=	ldns                 7.0      # 2.0

# ssl included as ssl.h has been used.
WANTLIB=	crypto ssl

# "OpenSSL does not support offline DANE verification (Needed for the
# DANE-TA usage type). Please upgrade OpenSSL to version >= 1.1.0 or rerun
# with --disable-dane-verify or --disable-dane-ta-usage"
CONFIGURE_ARGS=	--disable-dane-ta-usage

.include <bsd.port.mk>
