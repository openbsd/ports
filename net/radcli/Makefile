COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               3.0      # 10.0

V=		1.5.2
DISTNAME=	radcli-$V

CATEGORIES=	net

HOMEPAGE=	https://radcli.github.io/radcli/

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE=	Yes

# Uses 'alignas' (C99)
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring

SITES=		https://github.com/radcli/radcli/releases/download/$V/

LIB_DEPENDS=	security/gnutls

FAKE_FLAGS=	pkgsysconfdir=${PREFIX}/share/examples/radcli

CONFIGURE_STYLE=	gnu

# most tests need a running local RADIUS server; the script (ns.sh)
# provided to run this only supports Linux with netns.

.include <bsd.port.mk>
