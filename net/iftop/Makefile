# $OpenBSD: Makefile,v 1.8 2012/07/16 08:49:38 landry Exp $

COMMENT =		display bandwidth usage on an inteface

DISTNAME =		iftop-1.0pre2
CATEGORIES =		net

HOMEPAGE =		http://www.ex-parrot.com/~pdw/iftop/

MAINTAINER =		Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c ncursesw m pcap pthread

MASTER_SITES =		${HOMEPAGE}download/

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>
