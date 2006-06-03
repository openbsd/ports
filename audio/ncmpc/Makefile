# $OpenBSD: Makefile,v 1.1.1.1 2006/06/03 16:50:53 bernd Exp $

# mips64 architecture does not support trampoline code yet
NOT_FOR_ARCHS=		mips64

COMMENT=		"curses based frontend for mpd"

DISTNAME=		ncmpc-0.11.1
CATEGORIES=		audio

HOMEPAGE=		http://hem.bredband.net/kaw/ncmpc/

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses
LIB_DEPENDS=		glib-2.0.0.0::devel/glib2

MODULES=		devel/gettext

MASTER_SITES=		${HOMEPAGE}files/ \
			http://mercury.chem.pitt.edu/~shank/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		-ftrampolines

.include <bsd.port.mk>
