# $OpenBSD: Makefile,v 1.16 2015/03/16 18:07:54 naddy Exp $

COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-1.4.3
CATEGORIES =		security
SHARED_LIBS +=		ssh2	6.0	# .1.1
REVISION =		0

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
