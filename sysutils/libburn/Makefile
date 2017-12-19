# $OpenBSD: Makefile,v 1.1.1.1 2017/12/19 20:18:08 landry Exp $

COMMENT =	library for reading, mastering and writing optical discs

DISTNAME =	libburn-1.4.8
SHARED_LIBS +=  burn 0.0 # 105.0

CATEGORIES =	sysutils

HOMEPAGE =	https://dev.lovelyhq.com/libburnia/web/wikis/Libburn
MASTER_SITES =	http://files.libburnia-project.org/releases/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =	Yes

.include <bsd.port.mk>
