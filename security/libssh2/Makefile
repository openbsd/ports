# $OpenBSD: Makefile,v 1.20 2018/06/26 21:35:19 rsadowski Exp $

COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-1.8.0
CATEGORIES =		security
SHARED_LIBS +=		ssh2	8.0	# .1.1
REVISION =		0

HOMEPAGE =		https://www.libssh2.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# libssh2: BSD License
# libssh2 Documentation: Open Publication License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto ssl z

MASTER_SITES =		https://www.libssh2.org/download/

CONFIGURE_STYLE =	gnu

# The second test will only pass if public key auth is configured for ${USER}
TEST_IS_INTERACTIVE = Yes
TEST_FLAGS="USER=${USER}"

.include <bsd.port.mk>
