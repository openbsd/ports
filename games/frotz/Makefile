# $OpenBSD: Makefile,v 1.3 2001/02/25 04:44:00 danh Exp $
# $NetBSD: Makefile,v 1.2 2000/01/15 18:46:28 jlam Exp $
# Original from: Stefan Jokisch

DISTNAME=		UnixFrotz232R2Std10
PKGNAME=		frotz-2.32
CATEGORIES=     	games

HOMEPAGE=		http://www.geocities.com/SiliconValley/Heights/3222/frotz.html

MAINTAINER=		Carsten Ilchmann <ci2@gmx.net>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gmd.de/if-archive/infocom/interpreters/frotz/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
WRKDIST=		${WRKDIR}/frotz-2.32

ALL_TARGET=		frotz

CFLAGS+=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/frotz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/frotz.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
