# $OpenBSD: Makefile,v 1.13 2019/07/17 14:39:43 danj Exp $

COMMENT=		grep wrapper with search highlighting

DISTNAME=		hgrep-19991004
REVISION =		2
CATEGORIES=		textproc

HOMEPAGE=		http://www.acme.com/software/hgrep/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		hgrep_04oct1999.tar.gz

NO_TEST=		Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS=""

WRKDIST=	${WRKDIR}/hgrep

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hgrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hgrep.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
