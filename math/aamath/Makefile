# $OpenBSD: Makefile,v 1.5 2008/10/27 02:25:04 kili Exp $

COMMENT=		ASCII art mathematics

DISTNAME=		aamath-0.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		math

HOMEPAGE=		http://fuse.superglue.se/aamath/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c m stdc++ termcap readline

NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/aamath
ALL_TARGET=
MAKE_FLAGS=		CXX="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/aamath ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/aamath.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
