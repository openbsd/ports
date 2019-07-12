# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:11 sthen Exp $

COMMENT =	image extension for Tcl/Tk

V =		1.4.2
DISTNAME =	tkimg$V
PKGNAME =	tkimg-$V
SHLIB_VERSION =	0.0
.for _lib in tkimgbmp142 tkimg142 tkimggif142 tkimgico142 tkimgjpeg142 \
	tkimgpcx142 tkimgpixmap142 tkimgpng142 tkimgppm142 tkimgps142 \
	tkimgsgi142 tkimgsun142 tkimgtga142 tkimgtiff142 tkimgwindow142 \
	tkimgxbm142 tkimgxpm142 tkimgraw142 tkimgdted142 zlibtcl128 \
	jpegtcl84 pngtcl1412 tifftcl394
SHARED_LIBS +=	${_lib} ${SHLIB_VERSION}
.endfor
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE = 	http://tkimg.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =		Yes

WANTLIB += X11 Xext Xft Xss fontconfig m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkimg/}

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS} \
			devel/tcllib
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
TEST_DEPENDS =	${PKGPATH}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS= --libdir=${MODTCL_TCLDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tclinclude=$(MODTCL_INCDIR) \
		--with-tk=${MODTK_LIBDIR} \
		--with-tkinclude=${MODTK_INCDIR} \
		--with-x \
		--x-includes=${X11BASE}/include	
WRKDIST =	${WRKDIR}/tkimg1.4
TEST_IS_INTERACTIVE = X11
TEST_TARGET =	test
INSTALL_TARGET =	collate
FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR} LIB_RUNTIME_DIR=${MODTCL_TCLDIR}/tkimg
CONFIGURE_ENV = 	SHLIB_VERSION=${SHLIB_VERSION}

post-install:
	echo 'set auto_path [concat $$auto_path $$dir]' > \
		${DESTDIR}${MODTCL_TCLDIR}/tkimg/pkgIndex.tcl 

.include <bsd.port.mk>
