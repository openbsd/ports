# $OpenBSD: Makefile,v 1.16 2002/07/17 10:27:06 fgsch Exp $

COMMENT=	"gtk+ chess board interface"

DISTNAME=	eboard-0.6.2
CATEGORIES=	games

HOMEPAGE=	http://eboard.sourceforge.net

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=eboard/}

LIB_DEPENDS=		Imlib.19,gdk_imlib::graphics/imlib

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

MAKE_FLAGS+=		CXXFLAGS="${CXXFLAGS}" CFLAGS="${CFLAGS}"

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
