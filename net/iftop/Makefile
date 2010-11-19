# $OpenBSD: Makefile,v 1.5 2010/11/19 22:31:33 espie Exp $

COMMENT =		display bandwidth usage on an inteface

DISTNAME =		iftop-0.17
REVISION =		0
CATEGORIES =		net

HOMEPAGE =		http://www.ex-parrot.com/~pdw/iftop/

MAINTAINER =		Girish Venkatachalam <girish1729@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c curses m pcap pthread

MASTER_SITES =		${HOMEPAGE}download/

CONFIGURE_STYLE =	gnu dest
USE_GROFF =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iftop ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iftop.8 ${PREFIX}/man/man8

NO_REGRESS =		Yes

.include <bsd.port.mk>
