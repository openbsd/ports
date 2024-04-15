COMMENT =		c client library for the Riemann monitoring system

DISTNAME =		riemann-c-client-2.2.0

SHARED_LIBS +=		riemann-client-gnutls 0.0 # 0.0

CATEGORIES =		sysutils

HOMEPAGE =		https://git.madhouse-project.org/algernon/riemann-c-client
SITES =			https://git.madhouse-project.org/algernon/riemann-c-client/archive/

# EUPL 1.2
PERMIT_PACKAGE =	Yes

WRKDIST =		${WRKDIR}/riemann-c-client

WANTLIB =  c gmp gnutls hogweed iconv idn2 intl
WANTLIB += json-c m nettle p11-kit protobuf-c pthread tasn1 unistring

LIB_DEPENDS =		devel/protobuf-c \
			security/gnutls \
			devel/json-c

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

USE_GMAKE =		Yes

# needs riemann running
NO_TEST=		Yes

.include <bsd.port.mk>
