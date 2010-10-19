# $OpenBSD: Makefile,v 1.10 2010/10/19 08:14:01 espie Exp $

COMMENT =	typing break alarm and timer

DISTNAME =	xwrits-2.26
CATEGORIES =	x11
HOMEPAGE =	http://www.lcdf.org/~eddietwo/xwrits/

MAINTAINER =	Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		ICE SM X11 Xext Xinerama c m 

MASTER_SITES =		${HOMEPAGE}

USE_X11 = 		Yes
USE_GROFF =	Yes
SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu

NO_REGRESS = 		Yes

.include <bsd.port.mk>
