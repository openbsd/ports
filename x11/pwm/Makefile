# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:41 fgsch Exp $

COMMENT=		"lightweight window manager with emphasis on usability"

DISTNAME=		pwm-20010309
CATEGORIES=		x11

HOMEPAGE=		http://modeemi.cs.tut.fi/~tuomov/pwm/
MASTER_SITES=		http://modeemi.cs.tut.fi/~tuomov/dl/

MAINTAINER=             Andrey Smagin <andrey@smagin.com>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
NO_REGRESS=		Yes

MAKE_ENV=		CC='${CC}' SYSCONFDIR='${SYSCONFDIR}'

.include <bsd.port.mk>
