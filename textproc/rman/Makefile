COMMENT=	reverse compile man pages from formatted form

DISTNAME=	rman-3.2
REVISION=	1
CATEGORIES=	textproc
HOMEPAGE=	https://polyglotman.sourceforge.net/

# Artistic
PERMIT_PACKAGE=	Yes
WANTLIB=		c

SITES=		${SITE_SOURCEFORGE:=polyglotman/}

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
