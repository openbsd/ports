# $OpenBSD: Makefile,v 1.19 2013/03/10 22:55:06 espie Exp $

COMMENT=		wm-dockapp; audio mixer

DISTNAME=		wmmixer-1.0-beta1
PKGNAME=		wmmixer-1.0b1
REVISION=		3
CATEGORIES=		audio x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c m ossaudio stdc++

EXTRACT_SUFX=		.tgz

NO_TEST=		Yes
CONFIGURE_STYLE=	imake noman

WRKDIST=		${WRKDIR}/wmmixer

SAMPLE_DIR=		${PREFIX}/share/examples/wmmixer
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmixer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/home.wmmixer ${SAMPLE_DIR}/dot.wmmixer.sample

.include <bsd.port.mk>
