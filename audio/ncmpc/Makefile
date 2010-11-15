# $OpenBSD: Makefile,v 1.19 2010/11/15 00:22:47 espie Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		ncmpc-0.17
EPOCH=			0
REVISION=		0
CATEGORIES=		audio

HOMEPAGE=		http://mpd.wikia.com/wiki/Client:Ncmpc

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c glib-2.0 mpdclient ncurses
LIB_DEPENDS=		devel/glib2 \
			audio/libmpdclient
MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
