# $OpenBSD: Makefile,v 1.6 2010/10/18 18:13:14 espie Exp $

COMMENT=	convert jpeg to compressed PostScript

DISTNAME=	jpeg2ps-1.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pdflib.com/products/more/jpeg2ps.html

# according to jpeg2ps.1
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	may not sell
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE:S/.html/\//}

REGRESS_TARGET=	test
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} -c' LD='${CC}'
USE_GROFF =	Yes

.include <bsd.port.mk>
