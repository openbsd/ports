# $OpenBSD: Makefile,v 1.1.1.1 2011/04/11 07:43:34 jasper Exp $

COMMENT =		geometry viewer for OOGL file formats

DISTNAME =		geomview-1.9.4
CATEGORIES =		graphics

HOMEPAGE =		http://www.geomview.org
MAINTAINER =		Patsy <openbsd@ethernull.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=geomview/}

MODULES =		converters/libiconv

RUN_DEPENDS =		graphics/netpbm \
			print/ps2eps

LIB_DEPENDS =		x11/openmotif

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xm Xmu Xrender Xt c expat
WANTLIB += fontconfig freetype jpeg m png pthread-stubs
WANTLIB += stdc++ xcb z

USE_GMAKE =	Yes
USE_LIBTOOL = 	Yes

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
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/geomview/html/

.include <bsd.port.mk>
