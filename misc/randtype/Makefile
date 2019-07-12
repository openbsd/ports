# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:53 sthen Exp $

COMMENT=	output characters or lines at random intervals

DISTNAME=	randtype-1.13
CATEGORIES=	misc
REVISION=	0

HOMEPAGE=	http://bjk.sourceforge.net/randtype/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bjk/}

FIX_EXTRACT_PERMISSIONS=Yes

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c z

MAKE_FLAGS=	CC="${CC}" \
		PORTS_CFLAGS="${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/randtype ${PREFIX}/bin
	gunzip ${WRKSRC}/randtype.1.gz
	${INSTALL_MAN} ${WRKSRC}/randtype.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
