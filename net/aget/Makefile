# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:45 espie Exp $

COMMENT =	multi threaded HTTP download accelerator
DISTNAME =	aget-0.4.1
CATEGORIES =	net

HOMEPAGE=	http://www.enderunix.org/aget/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Girish Venkatachalam <girish1729@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aget ${PREFIX}/bin

.include <bsd.port.mk>
