# $OpenBSD: Makefile,v 1.13 2004/12/22 11:48:33 alek Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/03/05 17:07:28 nectar Exp $

COMMENT=	"delay program with feedback to the user"

DISTNAME=	delay-1.5
CATEGORIES=	misc
MASTER_SITES=	http://onegeek.org/~tom/software/delay/dl/

HOMEPAGE=	http://onegeek.org/~tom/software/delay/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
