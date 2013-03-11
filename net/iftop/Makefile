# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:47 espie Exp $

COMMENT =		display bandwidth usage on an inteface

DISTNAME =		iftop-1.0pre2
CATEGORIES =		net

HOMEPAGE =		http://www.ex-parrot.com/~pdw/iftop/

MAINTAINER =		Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ncursesw m pcap pthread

MASTER_SITES =		${HOMEPAGE}download/

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
