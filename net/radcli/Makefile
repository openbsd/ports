COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               1.0      # 8.0

V=		1.3.0
DISTNAME=	radcli-$V

CATEGORIES=	net

HOMEPAGE=	https://radcli.github.io/radcli/

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE=	Yes

WANTLIB += ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit
WANTLIB += pthread tasn1 unistring

MASTER_SITES=	https://github.com/radcli/radcli/releases/download/$V/

LIB_DEPENDS=	security/gnutls

FAKE_FLAGS=	pkgsysconfdir=${PREFIX}/share/examples/radcli

CONFIGURE_STYLE=	gnu

# most tests need a running local RADIUS server; they talk about a
# run-server.sh script to run this but it's not actually included.

#SEPARATE_BUILD=		Yes	# breaks avpair test

.include <bsd.port.mk>
