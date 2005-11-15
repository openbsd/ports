# $OpenBSD: Makefile,v 1.2 2005/11/15 21:17:48 wilfried Exp $

COMMENT=		"small tool to make annotations on the screen"

DISTNAME=		gromit-20041213
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

HOMEPAGE=		http://www.home.unix-ag.org/simon/gromit/

MAINTAINER=		Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB=		c cairo freetype X11 m fontconfig atk-1.0.0.0 \
			glib-2.0.0.0 gobject-2.0.0.0 gmodule-2.0.0.0 \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0
			

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		${LIB_DEPENDS}
	

NO_REGRESS=		Yes

DOCDIR=			${PREFIX}/share/doc/gromit/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gromit ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/gromitrc ${DOCDIR}

.include <bsd.port.mk>
