# $OpenBSD: Makefile,v 1.6 2001/12/28 22:11:58 pvalchev Exp $

COMMENT=	"sends AM radio signals using a monitor"

VERSION=	1.0.4
DISTNAME=	tempest_for_eliza-${VERSION}
PKGNAME=	tempest-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.435

HOMEPAGE=	http://www.erikyyy.de/tempest/

MAINTAINER=	Sebastian Stark <seb@todesplanet.de>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

LIB_DEPENDS=	SDL::devel/sdl

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
