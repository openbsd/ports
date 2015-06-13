# $OpenBSD: Makefile,v 1.17 2015/06/13 15:41:13 benoit Exp $

COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-1.6.0
CATEGORIES =		security
SHARED_LIBS +=		ssh2	7.0	# .1.1

HOMEPAGE =              http://www.libssh2.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# libssh2: BSD License
# libssh2 Documentation: Open Publication License 
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto ssl z

MASTER_SITES =		http://www.libssh2.org/download/

CONFIGURE_STYLE =	gnu

# The second test will only pass if public key auth is configured for ${USER}
TEST_IS_INTERACTIVE = Yes
TEST_FLAGS="USER=${USER}"

.include <bsd.port.mk>
