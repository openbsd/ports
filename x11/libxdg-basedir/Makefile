# $OpenBSD: Makefile,v 1.8 2016/03/11 20:28:33 naddy Exp $

COMMENT =	implementation of the XDG Base Directory specification

DISTNAME =	libxdg-basedir-1.2.0
SHARED_LIBS +=  xdg-basedir	2.0	# .3.0
CATEGORIES =	x11 devel
REVISION =	0

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://nevill.ch/libxdg-basedir/downloads/

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--disable-doxygen-doc

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/basedir.c

.include <bsd.port.mk>
