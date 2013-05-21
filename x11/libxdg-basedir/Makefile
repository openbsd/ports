# $OpenBSD: Makefile,v 1.6 2013/05/21 06:22:30 dcoppa Exp $

COMMENT =	implementation of the XDG Base Directory specification

DISTNAME =	libxdg-basedir-1.2.0
SHARED_LIBS +=  xdg-basedir	2.0	# .3.0
CATEGORIES =	x11 devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://nevill.ch/libxdg-basedir/downloads/

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-doxygen-doc

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/basedir.c

.include <bsd.port.mk>
