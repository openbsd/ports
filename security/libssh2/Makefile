COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-1.11.1
CATEGORIES =		security
SHARED_LIBS +=		ssh2	10.2	# .1.1

HOMEPAGE =		https://www.libssh2.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# libssh2: BSD License
# libssh2 Documentation: Open Publication License
PERMIT_PACKAGE =	Yes

WANTLIB =		crypto ssl z

SITES =			https://www.libssh2.org/download/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-docker-tests

CFLAGS +=		-DHAVE_OPAQUE_STRUCTS=1

# The second test will only pass if public key auth is configured for ${USER}
TEST_IS_INTERACTIVE =	Yes
TEST_FLAGS =		"USER=${USER}"

.include <bsd.port.mk>
