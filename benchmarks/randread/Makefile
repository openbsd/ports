# $OpenBSD: Makefile,v 1.5 2012/04/02 13:06:42 ajacoutot Exp $

COMMENT=	help benchmark random read performance

DISTNAME=	randread-0.2
CATEGORIES=	benchmarks
REVISION=	0

HOMEPAGE=	http://randread.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=randread/}

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -o randread randread.c filelist.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/randread ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/randread
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/randread

.include <bsd.port.mk>
