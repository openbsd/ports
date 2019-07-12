# $OpenBSD: Makefile,v 1.25 2019/07/12 20:50:14 sthen Exp $

COMMENT=	reverse compile man pages from formatted form

DISTNAME=	rman-3.2
REVISION=	0
CATEGORIES=	textproc
HOMEPAGE=	http://polyglotman.sourceforge.net/

# Artistic
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=polyglotman/}

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
