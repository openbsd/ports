# $OpenBSD: Makefile,v 1.2 2010/10/18 21:25:07 espie Exp $

COMMENT =		read and manipulate the MP4 container format

DISTNAME =		libmp4v2-1.5.0.1

SHARED_LIBS =		mp4v2	3.0

CATEGORIES =		multimedia audio

HOMEPAGE =		http://resare.com/libmp4v2/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# MPLv1.1
PERMIT_PACKAGE_CDROM =	Patents
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Patents
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${HOMEPAGE}/dist/
EXTRACT_SUFX =		.tar.bz2

USE_LIBTOOL =		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
