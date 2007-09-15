# $OpenBSD: Makefile,v 1.30 2007/09/15 18:01:01 simon Exp $

COMMENT=	gtk+ chess board interface

DISTNAME=	eboard-0.9.0
PKGNAME=	${DISTNAME}
CATEGORIES=	games x11

HOMEPAGE=	http://eboard.sourceforge.net/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xi c gdk glib gmodule gtk jpeg m png \
			stdc++ tiff ungif z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=eboard/}

LIB_DEPENDS=		gdk_imlib::graphics/imlib

MODULES=		devel/gettext

USE_X11=		Yes
AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS+=	CXXFLAGS="${CXXFLAGS}" CFLAGS="${CFLAGS}"

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
