# $OpenBSD:
# $FreeBSD: ports/misc/ytree/Makefile,v 1.10 2000/04/30 20:15:23 steve Exp $

DISTNAME=	ytree-1.71
CATEGORIES=	misc
NEED_VERSION=	1.348
HOMEPAGE=	http://www.han.de/~werner/ytree.html

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

MASTER_SITES=	http://www.han.de/~werner/ \
		http://openbsd.rutgers.edu/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	slang.14::devel/libslang

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ytree ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytree
	${INSTALL_DATA} ${WRKBUILD}/ytree.conf \
		${PREFIX}/share/examples/ytree/ytree.conf
	${INSTALL_MAN} ${WRKBUILD}/ytree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
