# $OpenBSD: Makefile,v 1.1.1.1 2001/02/06 11:56:54 wilfried Exp $

DISTNAME=	wmmp3-0.12
CATEGORIES=	audio x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://www.dotfiles.com/software/wmmp3/
MASTER_SITES= 	${HOMEPAGE}

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mpg123::audio/mpg123

CONFIGURE_STYLE=	gnu
USE_X11=	Yes

SAMPLE_DIR=	${PREFIX}/share/examples/wmmp3

SUBST_VARS+=	SAMPLE_DIR

SEPARATE_BUILD=	concurrent

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmp3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/sample.wmmp3 ${SAMPLE_DIR}/dot.wmmp3.sample

.include <bsd.port.mk>
