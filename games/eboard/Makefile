# $OpenBSD: Makefile,v 1.2 2001/10/06 03:37:13 kevlo Exp $

COMMENT=	"gtk+ chess board interface"

DISTNAME=	eboard-0.3.3
CATEGORIES=	games
NEED_VERSION=	1.465

HOMEPAGE=	http://eboard.sourceforge.net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	eboard

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib

USE_X11=	Yes
CONFIGURE_STYLE= gnu

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
