# $OpenBSD: Makefile,v 1.7 2015/01/26 12:50:35 jca Exp $

COMMENT=	simple digital clock

DISTNAME=	sclock-0.6
REVISION=	2
CATEGORIES=	x11

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes
WANTLIB=	c X11

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
