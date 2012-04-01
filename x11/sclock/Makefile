# $OpenBSD: Makefile,v 1.5 2012/04/01 06:36:18 ajacoutot Exp $

COMMENT=	simple digital clock

DISTNAME=	sclock-0.6
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://spootnik.org/sclock/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes
WANTLIB=	c X11

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
