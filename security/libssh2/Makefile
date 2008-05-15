# $OpenBSD: Makefile,v 1.1.1.1 2008/05/15 21:20:00 merdely Exp $

COMMENT =		library implementing the SSH2 protocol

DISTNAME =		libssh2-0.18
CATEGORIES =		security
HOMEPAGE =		http://www.libssh2.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libssh2/}
SHARED_LIBS +=		ssh2	1.0	# .1.0

MAINTAINER =		Eric Sproul <eric@nanobyte.org>

# libssh2: BSD License
# libssh2 Documentation: Open Publication License 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes
WANTLIB =		crypto z

.include <bsd.port.mk>
