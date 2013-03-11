# $OpenBSD: Makefile,v 1.9 2013/03/11 11:10:56 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	image extension for Tcl/Tk

V =		1.4
REVISION =	1
DISTNAME =	tkimg$V
PKGNAME =	tkimg-$V
SHLIB_VERSION =	0.0
.for _lib in tkimgbmp14 tkimg14 tkimggif14 tkimgico14 tkimgjpeg14 \
	tkimgpcx14 tkimgpixmap14 tkimgpng14 tkimgppm14 tkimgps14 \
	tkimgsgi14 tkimgsun14 tkimgtga14 tkimgtiff14 tkimgwindow14 \
	tkimgxbm14 tkimgxpm14 tkimgraw14 tkimgdted14 zlibtcl125 \
	jpegtcl82 pngtcl143 tifftcl394
SHARED_LIBS +=	${_lib} ${SHLIB_VERSION}
.endfor

CATEGORIES =	graphics

HOMEPAGE = 	http://tkimg.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += X11 Xext Xft Xss m

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
TEST_IS_INTERACTIVE = X11
TEST_TARGET =	test
INSTALL_TARGET =	collate
FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR} LIB_RUNTIME_DIR=${MODTCL_TCLDIR}/tkimg
CONFIGURE_ENV = 	SHLIB_VERSION=${SHLIB_VERSION}

post-install:
	echo 'set auto_path [concat $$auto_path $$dir]' > \
		${DESTDIR}${MODTCL_TCLDIR}/tkimg/pkgIndex.tcl 

.include <bsd.port.mk>
