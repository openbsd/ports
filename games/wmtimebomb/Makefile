# $OpenBSD: Makefile,v 1.12 2002/04/19 11:05:52 wilfried Exp $

COMMENT=		'wm-app; minesweeper'

DISTNAME=		wmtimebomb.20
PKGNAME=		wmtimebomb-0.2.0
CATEGORIES=		games x11 x11/windowmaker
NEED_VERSION=		1.515

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no licence"
PERMIT_PACKAGE_FTP=	"no licence"
PERMIT_DISTFILES_CDROM=	"no licence"
PERMIT_DISTFILES_FTP=	"no licence"

MODULES=		gettext
LIB_DEPENDS=		wraster.4::x11/windowmaker \
			PropList.2::devel/libproplist

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake

FLAVORS=		8bpp
FLAVOR?=

WRKDIST=		${WRKDIR}/wmtimebomb.app

SAMPLE_DIR=		${PREFIX}/share/examples/wmtimebomb
SUBST_VARS+=		SAMPLE_DIR

pre-configure:
.if ${FLAVOR:L:M8pp}
	cd ${WRKSRC} && \
		rm XPM && ln -s XPM.lo XPM
.else
	cd ${WRKSRC} && \
		rm XPM && ln -s XPM.hi XPM
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtimebomb ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/example.modefile ${SAMPLE_DIR}

.include <bsd.port.mk>
