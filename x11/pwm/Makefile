# $OpenBSD: Makefile,v 1.6 2002/02/20 12:47:55 naddy Exp $

COMMENT=		"lightweight window manager with emphasis on usability"

DISTNAME=		pwm-20010309
CATEGORIES=		x11
NEED_VERSION=		1.500

HOMEPAGE=		http://www.students.tut.fi/~tuomov/pwm/
MASTER_SITES=		http://www.students.tut.fi/~tuomov/dl/

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
