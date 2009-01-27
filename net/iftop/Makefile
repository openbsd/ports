# $OpenBSD: Makefile,v 1.2 2009/01/27 01:03:38 sthen Exp $

COMMENT =		display bandwidth usage on an inteface

DISTNAME =		iftop-0.17
PKGNAME =		${DISTNAME}p0
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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iftop ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iftop.8 ${PREFIX}/man/man8

NO_REGRESS =		Yes

.include <bsd.port.mk>
