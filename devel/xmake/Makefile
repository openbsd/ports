# $OpenBSD: Makefile,v 1.14 2001/06/27 20:56:25 pvalchev Exp $

COMMENT=	"powerful make utility"

DISTNAME=	xmake-1.01
CATEGORIES=	devel
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

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
