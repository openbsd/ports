# $OpenBSD: Makefile,v 1.10 2001/04/03 02:43:44 brad Exp $

COMMENT=	"full screen visualization of network traffic"

DISTNAME=	trafshow-3.1
CATEGORIES=	net
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.nsk.su/pub/RinetSoft/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
EXTRACT_SUFX=	.tgz

PATCHFILES=	trafshow-31-v6-20010322a.diff.gz:0
PATCH_DIST_STRIP= -p1

MAINTAINER=     Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-DINET6"

ALL_TARGET=	trafshow

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trafshow
	${INSTALL_PROGRAM} ${WRKBUILD}/trafshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/trafshow.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/.trafshow \
		${PREFIX}/share/examples/trafshow/trafshow.conf.sample

.include <bsd.port.mk>
