# $OpenBSD: Makefile,v 1.1.1.1 2002/03/11 22:20:43 naddy Exp $

COMMENT=		"grep wrapper with search highlighting"

DISTNAME=		hgrep-19991004
CATEGORIES=		textproc
NEED_VERSION=		1.504

HOMEPAGE=		http://www.acme.com/software/hgrep/

MAINTAINER=		Nick Nauwelaerts <nick@wanadoo.be>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		hgrep_04oct1999.tar.gz

NO_REGRESS=		Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS=""

WRKDIST=	${WRKDIR}/hgrep

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hgrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hgrep.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
