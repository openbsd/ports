# $OpenBSD: Makefile,v 1.6 2013/03/11 11:46:15 espie Exp $

COMMENT=	simple digital clock

DISTNAME=	sclock-0.6
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://spootnik.org/sclock/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes
WANTLIB=	c X11

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
