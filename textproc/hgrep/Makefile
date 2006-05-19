# $OpenBSD: Makefile,v 1.5 2006/05/19 07:27:38 steven Exp $

COMMENT=		"grep wrapper with search highlighting"

DISTNAME=		hgrep-19991004
PKGNAME=		${DISTNAME}p0
CATEGORIES=		textproc

HOMEPAGE=		http://www.acme.com/software/hgrep/

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap 

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		hgrep_04oct1999.tar.gz

NO_REGRESS=		Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS=""

WRKDIST=	${WRKDIR}/hgrep

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hgrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hgrep.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
