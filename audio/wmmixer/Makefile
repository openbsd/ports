# $OpenBSD: Makefile,v 1.1.1.1 2001/02/06 11:54:54 wilfried Exp $

PKGNAME=	wmmixer-1.0b1
DISTNAME=	wmmixer-1.0-beta1
EXTRACT_SUFX=	.tgz
CATEGORIES=	audio x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://www.geocities.com/SiliconValley/Vista/2471/wmmixer.html
MASTER_SITES=	http://www.geocities.com/SiliconValley/Vista/2471/files/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake
USE_X11=	Yes

WRKDIST=		${WRKDIR}/wmmixer

SAMPLE_DIR=	${PREFIX}/share/examples/wmmixer

SUBST_VARS+=	SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmixer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/home.wmmixer ${SAMPLE_DIR}/dot.wmmixer.sample

.include <bsd.port.mk>
