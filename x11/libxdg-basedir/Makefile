# $OpenBSD: Makefile,v 1.9 2019/04/24 16:26:59 sthen Exp $

COMMENT =	implementation of the XDG Base Directory specification

DISTNAME =	libxdg-basedir-1.2.0
SHARED_LIBS +=  xdg-basedir	2.0	# .3.0
CATEGORIES =	x11 devel
REVISION =	1

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://nevill.ch/libxdg-basedir/downloads/

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--disable-doxygen-doc

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/basedir.c

.include <bsd.port.mk>
