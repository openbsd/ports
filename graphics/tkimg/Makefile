# $OpenBSD: Makefile,v 1.2 2010/07/30 16:41:09 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	image extension for Tcl/Tk

V =		1.3
DISTNAME =	tkimg$V
PKGNAME =	tkimg-$V
SHLIB_VERSION =	0.0
.for _lib in tkimgbmp13 tkimg13 tkimggif13 tkimgico13 tkimgjpeg13 \
	tkimgpcx13 tkimgpixmap13 tkimgpng13 tkimgppm13 tkimgps13 \
	tkimgsgi13 tkimgsun13 tkimgtga13 tkimgtiff13 tkimgwindow13 \
	tkimgxbm13 tkimgxpm13 zlibtcl121 jpegtcl10 pngtcl126 \
	tifftcl361
SHARED_LIBS +=	${_lib} ${SHLIB_VERSION}
.endfor

CATEGORIES =	graphics

HOMEPAGE = 	http://tkimg.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss expat fontconfig
WANTLIB += freetype m z pthread-stubs xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkimg/}

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
REGRESS_DEPENDS =	::${PKGPATH}

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=$(MODTCL_INCDIR) \
		--with-tk=${MODTK_LIBDIR} \
		--with-tkinclude=${MODTK_INCDIR} \
		--with-x \
		--x-includes=${X11BASE}/include	
REGRESS_IS_INTERACTIVE = X11
REGRESS_TARGET =	test
IMGLIBDIR =		Img${V}
INSTALL_TARGET =	collate
FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR}
CONFIGURE_ENV = 	SHLIB_VERSION=${SHLIB_VERSION} IMGLIBDIR=${IMGLIBDIR}

post-install:
	# disable img::png when requiring package Img
	# regressions are still segfaulting when testing img::png, at least other 
	# tcl/tk apps requiring package Img are prevented from segfaulting
	perl -pi -e s,'    package require img::png','',g \
		${PREFIX}/lib/Img1.3/pkgIndex.tcl

.include <bsd.port.mk>
