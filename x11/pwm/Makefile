# $OpenBSD: Makefile,v 1.1.1.1 2001/03/19 15:48:38 jakob Exp $

DISTNAME=	pwm-1.0
CATEGORIES=	x11
NEED_VERSION=	1.352

HOMEPAGE=	http://www.students.tut.fi/~tuomov/pwm/

MAINTAINER=	Wynand van Dyk <wynand@type01.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.students.tut.fi/~tuomov/dl/

USE_X11=	Yes
USE_GMAKE=	Yes

do-install:
	mkdir -p ${PREFIX}/share/pwm
	mkdir -p ${PREFIX}/share/doc/pwm
	${INSTALL_PROGRAM} ${WRKSRC}/pwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pwm.1x ${PREFIX}/man/man1/pwm.1
	${INSTALL_DATA} ${WRKSRC}/etc/pwm/*.conf ${PREFIX}/share/pwm
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/pwm
	${INSTALL_DATA} ${WRKSRC}/config.txt ${PREFIX}/share/doc/pwm

.include <bsd.port.mk>
