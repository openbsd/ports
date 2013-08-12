# $OpenBSD: Makefile,v 1.9 2013/08/12 10:03:00 sthen Exp $

COMMENT =		geometry viewer for OOGL file formats

V =			1.9.4
DISTNAME =		geomview-$V
REVISION =		3
CATEGORIES =		graphics

HOMEPAGE =		http://www.geomview.org
MAINTAINER =		Patsy <openbsd@ethernull.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=geomview/}

MODULES =		converters/libiconv

RUN_DEPENDS =		graphics/netpbm \
			print/ps2eps

LIB_DEPENDS =		x11/openmotif

WANTLIB += ICE SM X11 Xext Xft Xm Xmu Xrender Xt c expat
WANTLIB += fontconfig freetype jpeg m png
WANTLIB += stdc++ xcb z

USE_GMAKE =	Yes

SUBST_VARS +=	V

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS = --without-opengl
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -Dalloca=alloca"

MAN1_PAGES = 	animate.1 anytooff.1 anytoucd.1 bdy.1 bez2mesh.1 clip.1 \
		geomview.1 hvectext.1 math2oogl.1 nose.1 offconsol.1 \
		oogl2rib.1 oogl2vrml.1 polymerge.1 togeomview.1 ucdtooff.1 \
		vrml2oogl.1
MAN3_PAGES =	anytopl.3 bdy.3 fsaparse.3 geomutil.3 plcombine.3 plconsol.3 \
		lisp.3
MAN5_PAGES =	discgrp.5 oogl.5 geomview.5

post-install:
.for i in ${MAN1_PAGES}
	mv ${PREFIX}/man/man1/${i}gv ${PREFIX}/man/man1/${i}
.endfor
.for i in ${MAN3_PAGES}
	mv ${PREFIX}/man/man3/${i}gv ${PREFIX}/man/man3/${i}
.endfor
.for i in ${MAN5_PAGES}
	mv ${PREFIX}/man/man5/${i}gv ${PREFIX}/man/man5/${i}
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/geomview/html/
	# avoid conflict with graphics/ImageMagick
	mv ${PREFIX}/man/man1/animate.1 ${PREFIX}/man/man1/geomview-animate.1

.include <bsd.port.mk>
