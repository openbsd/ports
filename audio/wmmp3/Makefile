# $OpenBSD: Makefile,v 1.7 2001/11/14 13:58:34 wilfried Exp $

COMMENT=		'wm-dockapp; front end for mpg123'

DISTNAME=		wmmp3-0.12
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://www.dotfiles.com/software/wmmp3/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

RUN_DEPENDS=		:mpg123-*:audio/mpg123

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

SAMPLE_DIR=		${PREFIX}/share/examples/wmmp3
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmp3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/sample.wmmp3 ${SAMPLE_DIR}/dot.wmmp3.sample

.include <bsd.port.mk>
