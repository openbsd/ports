# $OpenBSD: Makefile,v 1.17 2010/10/18 18:36:59 espie Exp $

COMMENT=	full screen visualization of network traffic

DISTNAME=	trafshow-3.1
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.nsk.su/pub/RinetSoft/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
EXTRACT_SUFX=	.tgz

# See PR#3565 before enabling
#PATCHFILES=	trafshow-31-v6-20010322a.diff.gz:0
#PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://soft.risp.ru/trafshow/index_en.shtml

MAINTAINER=     Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses pcap termcap 

CONFIGURE_STYLE= gnu
#CONFIGURE_ENV=	CPPFLAGS="-DINET6"

ALL_TARGET=	trafshow

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trafshow
	${INSTALL_PROGRAM} ${WRKBUILD}/trafshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/trafshow.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/.trafshow \
		${PREFIX}/share/examples/trafshow/trafshow.conf.sample

.include <bsd.port.mk>
