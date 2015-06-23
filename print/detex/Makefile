# $OpenBSD: Makefile,v 1.30 2015/06/23 07:50:34 bentley Exp $

COMMENT=		strip TeX/LaTeX codes from a file

DISTNAME=		detex-2.8
REVISION=		2
CATEGORIES=		print

HOMEPAGE=		https://www.cs.purdue.edu/homes/trinkle/detex/

MASTER_SITES=		https://www.cs.purdue.edu/homes/trinkle/detex/ \
			ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar

# NCSA/University of Illinois Open Source License
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

NO_TEST=		Yes
MAKE_FLAGS=		CFLAGS="${CFLAGS} -DNO_MALLOC_DECL"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/detex.1l ${PREFIX}/man/man1/detex.1

.include <bsd.port.mk>
