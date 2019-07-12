# $OpenBSD: Makefile,v 1.26 2019/07/12 20:48:50 sthen Exp $

COMMENT=	full screen visualization of network traffic

DISTNAME=	trafshow-3.1
REVISION=	2
CATEGORIES=	net

MASTER_SITES=	https://spacehopper.org/mirrors/ \
		ftp://ftp.nsk.su/pub/RinetSoft/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
EXTRACT_SUFX=	.tgz

# See PR#3565 before enabling
#PATCHFILES=	trafshow-31-v6-20010322a.diff.gz:0
#PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://soft.risp.ru/trafshow/index_en.shtml

PERMIT_PACKAGE=	Yes

WANTLIB += c curses pcap

CONFIGURE_STYLE= gnu
#CONFIGURE_ENV=	CPPFLAGS="-DINET6"

ALL_TARGET=	trafshow

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trafshow
	${INSTALL_PROGRAM} ${WRKBUILD}/trafshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/trafshow.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/.trafshow \
		${PREFIX}/share/examples/trafshow/trafshow.conf.sample

.include <bsd.port.mk>
