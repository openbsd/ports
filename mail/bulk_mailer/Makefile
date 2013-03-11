# $OpenBSD: Makefile,v 1.18 2013/03/11 11:23:50 espie Exp $

COMMENT=	speed mail delivery by sorting & batching addresses

DISTNAME=	bulk_mailer-1.13
REVISION =	0

CATEGORIES=	mail

MASTER_SITES=	ftp://cs.utk.edu/pub/moore/bulk_mailer/

HOMEPAGE=	http://www.cs.utk.edu/~moore/software.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

MAKE_ENV=	CC="${CC}"

NO_TEST=	Yes

.include <bsd.port.mk>
