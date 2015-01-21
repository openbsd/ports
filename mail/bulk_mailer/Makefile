# $OpenBSD: Makefile,v 1.19 2015/01/21 06:13:49 bentley Exp $

COMMENT=	speed mail delivery by sorting & batching addresses

DISTNAME=	bulk_mailer-1.13
REVISION =	1

CATEGORIES=	mail

MASTER_SITES=	ftp://cs.utk.edu/pub/moore/bulk_mailer/

HOMEPAGE=	http://www.cs.utk.edu/~moore/software.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

MAKE_ENV=	CC="${CC}"

NO_TEST=	Yes

.include <bsd.port.mk>
