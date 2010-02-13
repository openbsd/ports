# $OpenBSD: Makefile,v 1.11 2010/02/13 13:17:03 jasper Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		ncmpc-20070917
PKGNAME=		${DISTNAME}p1
CATEGORIES=		audio

HOMEPAGE=		http://hem.bredband.net/kaw/ncmpc/

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses
LIB_DEPENDS=		glib-2.0::devel/glib2

USE_LIBTOOL=    	Yes

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

MODULES=		devel/gettext

MASTER_SITES=		http://www.phil.uu.nl/~lievisse/distfiles/

CONFIGURE_STYLE=	gnu
AUTOMAKE_VERSION=	1.8
AUTOCONF_VERSION=	2.61
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		-ftrampolines

WRKDIST= 		${WRKDIR}/ncmpc

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
