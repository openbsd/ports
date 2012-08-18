# $OpenBSD: Makefile,v 1.21 2012/08/18 12:41:38 ajacoutot Exp $

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

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
