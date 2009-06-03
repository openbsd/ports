# $OpenBSD: Makefile,v 1.2 2009/06/03 22:46:42 merdely Exp $

COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-1.1
CATEGORIES =		security
HOMEPAGE =		http://www.libssh2.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libssh2/}
SHARED_LIBS +=		ssh2	2.0	# .1.0

MAINTAINER =		Eric Sproul <eric@nanobyte.org>

# libssh2: BSD License
# libssh2 Documentation: Open Publication License 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes
WANTLIB =		crypto ssl z

# The second test will only pass if public key auth is configured for ${USER}
REGRESS_IS_INTERACTIVE = Yes
REGRESS_FLAGS="USER=${USER}"

.include <bsd.port.mk>
