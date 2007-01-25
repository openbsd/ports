# $OpenBSD: Makefile,v 1.1.1.1 2007/01/25 10:33:58 mbalmer Exp $

COMMENT=	"simple sudoku puzzle solver"

DISTNAME=	sudoku-solver-1.0.0

CATEGORIES=    	games

HOMEPAGE=	http://www.etc.msys.ch/software/sudoku/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/sudoku/
EXTRACT_SUFX=	.tgz

FAKE_FLAGS=	${MAKE_FLAGS}

NO_REGRESS=	Yes

.include <bsd.port.mk>
