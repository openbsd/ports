# $OpenBSD: Makefile,v 1.2 2009/06/13 16:24:31 phessler Exp $

COMMENT =		font rendering library for OpenGL applications

DISTNAME =		ftgl-2.1.3-rc5
PKGNAME =		${DISTNAME}p0
SHARED_LIBS =		ftgl	0.0	# 2.1
CATEGORIES =		graphics

HOMEPAGE =		http://ftgl.wiki.sourceforge.net
MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# MIT license or the GNU LGPL, at your option.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-rc/~rc/}
WANTLIB =		GL GLU ICE SM X11 Xau Xdmcp Xext Xmu Xt freetype m z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ftgl/}
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}			\
			--with-gl-inc=${X11BASE}/include	\
			--with-gl-lib=${X11BASE}/lib

CONFIGURE_ENV +=	ac_cv_path_DOXYGEN=no

.include <bsd.port.mk>
