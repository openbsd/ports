# $OpenBSD: Makefile,v 1.3 2004/11/30 01:06:37 espie Exp $

COMMENT=	"convert jpeg to compressed PostScript"

DISTNAME=	jpeg2ps-1.9
CATEGORIES=	graphics

# according to jpeg2ps.1
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://www.pdflib.com/jpeg2ps/

REGRESS_TARGET=	test
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} -c' LD='${CC}'

.include <bsd.port.mk>
