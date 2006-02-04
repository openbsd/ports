# $OpenBSD: Makefile,v 1.4 2006/02/04 19:07:03 steven Exp $

COMMENT=	"convert jpeg to compressed PostScript"

DISTNAME=	jpeg2ps-1.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://www.pdflib.com/products/more/jpeg2ps.html

# according to jpeg2ps.1
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE:S/.html/\//}

REGRESS_TARGET=	test
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} -c' LD='${CC}'

.include <bsd.port.mk>
