# $OpenBSD: Makefile,v 1.10 2000/10/22 16:59:24 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/03/27 11:56:44 tg Exp $

DISTNAME=	deco383
PKGNAME=	deco-3.8.3
CATEGORIES=	misc
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.cronyx.ru/cronyx/deco/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--libdir=${PREFIX}/share

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/deco ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/deco/help
	${INSTALL_DATA} ${WRKBUILD}/menu ${PREFIX}/share/deco
	${INSTALL_DATA} ${WRKBUILD}/profile ${PREFIX}/share/deco
.for f in general edit view hexview
	${INSTALL_DATA} ${WRKBUILD}/help/*.${f} ${PREFIX}/share/deco/help
.endfor
	${INSTALL_MAN} ${WRKBUILD}/ref.man ${PREFIX}/man/man1/deco.1

.include <bsd.port.mk>
