# $OpenBSD: Makefile,v 1.1.1.1 2010/03/31 12:31:21 dcoppa Exp $

COMMENT =	implementation of the XDG Base Directory specification

DISTNAME =	libxdg-basedir-1.0.2
SHARED_LIBS +=  xdg-basedir	0.0	# .1.0
CATEGORIES =	x11 devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://n.ethz.ch/student/nevillm/download/libxdg-basedir/

USE_LIBTOOL =		yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-doxygen-doc

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/basedir.c

.include <bsd.port.mk>
