# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:47 wilfried Exp $

DISTNAME=		wmmp3-0.12
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.dotfiles.com/software/wmmp3/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		mpg123::audio/mpg123

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu

SAMPLE_DIR=		${PREFIX}/share/examples/wmmp3
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmp3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/sample.wmmp3 ${SAMPLE_DIR}/dot.wmmp3.sample

.include <bsd.port.mk>
