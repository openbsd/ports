# $OpenBSD: Makefile,v 1.3 2001/03/14 12:23:13 wilfried Exp $

DISTNAME=		wmmixer-1.0-beta1
PKGNAME=		wmmixer-1.0b1
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.geocities.com/SiliconValley/Vista/2471/wmmixer.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.geocities.com/SiliconValley/Vista/2471/files/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/
EXTRACT_SUFX=		.tgz

USE_X11=		Yes
CONFIGURE_STYLE=	imake

WRKDIST=		${WRKDIR}/wmmixer

SAMPLE_DIR=		${PREFIX}/share/examples/wmmixer
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmixer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/home.wmmixer ${SAMPLE_DIR}/dot.wmmixer.sample

.include <bsd.port.mk>
