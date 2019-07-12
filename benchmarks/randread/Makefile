# $OpenBSD: Makefile,v 1.8 2019/07/12 20:43:43 sthen Exp $

COMMENT=	help benchmark random read performance

DISTNAME=	randread-0.2
CATEGORIES=	benchmarks
REVISION=	1

HOMEPAGE=	http://randread.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=randread/}

# Public Domain
PERMIT_PACKAGE=	Yes

WANTLIB=		c

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o randread randread.c filelist.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/randread ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/randread
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/randread

.include <bsd.port.mk>
