# $OpenBSD: Makefile,v 1.15 2007/04/02 18:47:36 martynas Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/03/05 17:07:28 nectar Exp $

COMMENT=	"delay program with feedback to the user"

DISTNAME=	delay-1.6
CATEGORIES=	misc
MASTER_SITES=	${HOMEPAGE}dl/

HOMEPAGE=	http://onegeek.org/~tom/software/delay/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
