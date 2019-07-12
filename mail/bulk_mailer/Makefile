# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:25 sthen Exp $

COMMENT=	speed mail delivery by sorting & batching addresses

DISTNAME=	bulk_mailer-1.13
REVISION =	1

CATEGORIES=	mail

MASTER_SITES=	ftp://cs.utk.edu/pub/moore/bulk_mailer/

HOMEPAGE=	http://www.cs.utk.edu/~moore/software.html

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu

MAKE_ENV=	CC="${CC}"

NO_TEST=	Yes

.include <bsd.port.mk>
