# $OpenBSD: Makefile,v 1.22 2013/03/11 11:23:57 espie Exp $

COMMENT=	delay program with feedback to the user

DISTNAME=	delay-1.6
REVISION=	0
CATEGORIES=	misc
MASTER_SITES=	${HOMEPAGE}dl/

HOMEPAGE=	http://onegeek.org/~tom/software/delay/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
