# $OpenBSD: Makefile,v 1.1.1.1 2008/11/18 12:48:41 okan Exp $

COMMENT =	multi threaded HTTP download accelerator
DISTNAME =	aget-0.4
CATEGORIES =	net

HOMEPAGE=	http://www.enderunix.org/aget/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Girish Venkatachalam <girish1729@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM = Yes 
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c pthread

NO_REGRESS =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aget ${PREFIX}/bin

.include <bsd.port.mk>
