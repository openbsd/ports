# $OpenBSD: Makefile,v 1.13 2001/06/20 01:43:16 pvalchev Exp $

COMMENT=	"powerful make utility"

DISTNAME=	xmake-1.01
CATEGORIES=	devel
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

# License: NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/xmake
MAKE_FLAGS=CFLAGS='${CFLAGS} -Wall -Wstrict-prototypes'

pre-build:
	@rm -rf ${WRKSRC}/obj

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmake ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmake.1     ${PREFIX}/man/man1

.include <bsd.port.mk>
