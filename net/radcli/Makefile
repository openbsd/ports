# $OpenBSD: Makefile,v 1.10 2018/09/24 20:28:43 sthen Exp $

COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               0.3      # 6.0

V=		1.2.11
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

CONFIGURE_STYLE=	gnu

# most tests need a running local RADIUS server; they talk about a
# run-server.sh script to run this but it's not actually included.

#SEPARATE_BUILD=		Yes	# breaks avpair test

.include <bsd.port.mk>
