# $OpenBSD: Makefile,v 1.3 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT =	clone of rxvt with Unicode and Xft support

DISTNAME =	rxvt-unicode-9.07
REVISION=	0
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://dist.schmorp.de/rxvt-unicode/

HOMEPAGE =	http://software.schmorp.de/pkg/rxvt-unicode.html

MAINTAINER =	Thomas de Grivel <billitch@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xdmcp Xft Xrender c expat fontconfig \
		freetype m perl pthread-stubs util xcb z

USE_X11 =		Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS =	--enable-perl \
			--disable-afterimage \
			--with-term=rxvt-256color \
			--enable-xterm-colors=256
# missing locale support
CONFIGURE_ARGS +=	--disable-xim

.include <bsd.port.mk>
