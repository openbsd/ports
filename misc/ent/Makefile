# $OpenBSD: Makefile,v 1.8 2015/12/03 21:24:31 sthen Exp $
# Original from: John Walker http://www.fourmilab.ch/random/

CATEGORIES=		misc
COMMENT=		pseudo random number sequence test program

DISTNAME=		ent-1.0
REVISION=		0
EXTRACT_SUFX=		.zip

HOMEPAGE=		http://www.fourmilab.ch/random/
MASTER_SITES=		https://spacehopper.org/mirrors/

WRKSRC=			${WRKDIR}
ALL_TARGET=		ent

MAKE_FLAGS=		CFLAGS="${CFLAGS}" CC="${CC}"

# Public Domain; see ent.html
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ent ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/ent.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
