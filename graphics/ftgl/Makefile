# $OpenBSD: Makefile,v 1.6 2011/06/06 22:08:42 kili Exp $

COMMENT =		font rendering library for OpenGL applications

V =			2.1.3
DISTNAME =		ftgl-$V-rc5
PKGNAME =		ftgl-$Vrc5
EPOCH =			0
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
WANTLIB =		GL GLU ICE SM X11 Xau Xdmcp Xext Xmu Xt freetype m \
			pthread-stubs xcb z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ftgl/}
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}			\
			--with-gl-inc=${X11BASE}/include	\
			--with-gl-lib=${X11BASE}/lib

CONFIGURE_ENV +=	ac_cv_path_DOXYGEN=no

# 2.1.3~rc5 is a ridiculous version to stow in a pkg-config file,
# so add this workaround to prevent pkg-config from choking.
pre-configure:
	perl -pi -e 's,\@PACKAGE_VERSION\@,${V},' ${WRKSRC}/ftgl.pc.in

.include <bsd.port.mk>
