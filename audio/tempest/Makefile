# $OpenBSD: Makefile,v 1.3 2001/08/14 23:11:41 pvalchev Exp $

COMMENT=	"sends AM radio signals using a monitor"

VERSION=	1.0.4
DISTNAME=	tempest_for_eliza-${VERSION}
PKGNAME=	tempest-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.435

HOMEPAGE=	http://www.erikyyy.de/tempest/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	SDL.0.3:sdl-*-!no_x11:devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

SONGS=	forelise jonny saints ungarian fruehling oldmacdonald tempest

post-patch:
	@touch ${WRKSRC}/Makefile ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tempest_for_eliza ${PREFIX}/bin/tempest
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempest
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tempest
	${INSTALL_DATA_DIR} ${PREFIX}/share/tempest
	cd ${WRKSRC}/songs && ${INSTALL_DATA} ${SONGS} ${PREFIX}/share/tempest

.include <bsd.port.mk>
