# $OpenBSD: Makefile,v 1.6 2001/03/28 10:08:46 wilfried Exp $

COMMENT=		'wm-dockapp; application launching program'

DISTNAME=		wmbutton-0.4
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://members.access1.net/ehflora/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}wmbutton/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmbutton
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmbutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmbutton ${SAMPLE_DIR}/dot.wmbutton.sample

.include <bsd.port.mk>
