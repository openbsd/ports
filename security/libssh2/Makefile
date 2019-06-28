# $OpenBSD: Makefile,v 1.22 2019/06/28 12:33:45 benoit Exp $

COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-1.9.0
CATEGORIES =		security
SHARED_LIBS +=		ssh2	9.0	# .1.1

HOMEPAGE =		https://www.libssh2.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# libssh2: BSD License
# libssh2 Documentation: Open Publication License
PERMIT_PACKAGE =	Yes

WANTLIB =		crypto ssl z

MASTER_SITES =		https://www.libssh2.org/download/

CONFIGURE_STYLE =	gnu

# The second test will only pass if public key auth is configured for ${USER}
TEST_IS_INTERACTIVE = Yes
TEST_FLAGS="USER=${USER}"

.include <bsd.port.mk>
