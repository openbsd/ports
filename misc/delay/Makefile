# $OpenBSD: Makefile,v 1.19 2010/11/05 08:24:50 sthen Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/03/05 17:07:28 nectar Exp $

COMMENT=	delay program with feedback to the user

DISTNAME=	delay-1.6
REVISION=	0
CATEGORIES=	misc
MASTER_SITES=	${HOMEPAGE}dl/

HOMEPAGE=	http://onegeek.org/~tom/software/delay/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c curses

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
