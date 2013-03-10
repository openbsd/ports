# $OpenBSD: Makefile,v 1.22 2013/03/10 22:55:06 espie Exp $

COMMENT=		wm-dockapp; front end for an mp3 player

DISTNAME=		wmmp3-0.12
REVISION=		3
CATEGORIES=		audio x11 x11/windowmaker

HOMEPAGE=		http://www.dotfiles.com/software/wmmp3/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		audio/madplay

SEPARATE_BUILD=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

SAMPLE_DIR=		${PREFIX}/share/examples/wmmp3
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmp3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/sample.wmmp3 ${SAMPLE_DIR}/dot.wmmp3.sample

.include <bsd.port.mk>
