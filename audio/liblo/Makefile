# $OpenBSD: Makefile,v 1.1.1.1 2012/08/16 12:26:28 stsp Exp $

COMMENT =		open sound control protocol library
DISTNAME =		liblo-0.26
SHARED_LIBS =		lo 0.0
CATEGORIES =		audio
HOMEPAGE =		http://liblo.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}
BUILD_DEPENDS =		devel/doxygen
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
