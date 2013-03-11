# $OpenBSD: Makefile,v 1.9 2013/03/11 11:42:41 espie Exp $

COMMENT=		grep wrapper with search highlighting

DISTNAME=		hgrep-19991004
REVISION =		0
CATEGORIES=		textproc

HOMEPAGE=		http://www.acme.com/software/hgrep/

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c termcap 

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		hgrep_04oct1999.tar.gz

USE_GROFF =		Yes
NO_TEST=		Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS=""

WRKDIST=	${WRKDIR}/hgrep

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hgrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hgrep.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
