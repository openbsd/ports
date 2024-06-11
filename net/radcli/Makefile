COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               2.0      # 9.0

V=		1.4.0
DISTNAME=	radcli-$V

CATEGORIES=	net

HOMEPAGE=	https://radcli.github.io/radcli/

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec brotlienc gmp gnutls hogweed iconv idn2 intl
WANTLIB += nettle p11-kit pthread tasn1 unistring z zstd

SITES=		https://github.com/radcli/radcli/releases/download/$V/

LIB_DEPENDS=	security/gnutls

FAKE_FLAGS=	pkgsysconfdir=${PREFIX}/share/examples/radcli

CONFIGURE_STYLE=	gnu

# most tests need a running local RADIUS server; the script (ns.sh)
# provided to run this only supports Linux with netns.

.include <bsd.port.mk>
