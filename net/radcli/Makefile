# $OpenBSD: Makefile,v 1.8 2018/01/28 20:24:01 sthen Exp $

COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               0.1      # 5.1

V=		1.2.9
DISTNAME=	radcli-$V

CATEGORIES=	net

HOMEPAGE=	http://radcli.github.io/radcli/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring z

MASTER_SITES=	https://github.com/radcli/radcli/releases/download/$V/

LIB_DEPENDS=	security/gnutls

FAKE_FLAGS=	pkgsysconfdir=${PREFIX}/share/examples/radcli

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

# most tests need a running local RADIUS server; run-server.sh script to
# run this should have been included in the distfile, but isn't.

.include <bsd.port.mk>
