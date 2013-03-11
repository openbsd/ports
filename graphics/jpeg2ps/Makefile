# $OpenBSD: Makefile,v 1.8 2013/03/11 11:10:53 espie Exp $

COMMENT=	convert jpeg to compressed PostScript

DISTNAME=	jpeg2ps-1.9
REVISION =	0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pdflib.com/products/more/jpeg2ps.html

# according to jpeg2ps.1
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE:S/.html/\//}

TEST_TARGET=	test
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} -c' LD='${CC}'
USE_GROFF =	Yes

.include <bsd.port.mk>
