# $OpenBSD: Makefile,v 1.4 2013/03/11 11:46:14 espie Exp $

COMMENT =	implementation of the XDG Base Directory specification

DISTNAME =	libxdg-basedir-1.2.0
SHARED_LIBS +=  xdg-basedir	2.0	# .3.0
CATEGORIES =	x11 devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://n.ethz.ch/student/nevillm/download/libxdg-basedir/

USE_LIBTOOL =		yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-doxygen-doc

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/basedir.c

.include <bsd.port.mk>
