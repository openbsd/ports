# $OpenBSD: Makefile,v 1.4 2007/09/15 20:59:41 merdely Exp $

COMMENT=info viewer
MAINTAINER=Marc Espie <espie@openbsd.org>
DISTNAME=pinfo-0.6.7
CATEGORIES=textproc devel

# original distsite is currently unavailable
MASTER_SITES=ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

# GPL
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=c ncurses 

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.13
#CONFIGURE_ARGS+=--disable-nls
MODULES=devel/gettext
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
