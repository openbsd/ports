# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:19 espie Exp $

COMMENT =	typing break alarm and timer

DISTNAME =	xwrits-2.26
CATEGORIES =	x11
HOMEPAGE =	http://www.lcdf.org/~eddietwo/xwrits/

MAINTAINER =	Scott Vokes <vokes.s@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		ICE SM X11 Xext Xinerama c m 

MASTER_SITES =		${HOMEPAGE}

USE_GROFF =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

NO_TEST = 		Yes

.include <bsd.port.mk>
