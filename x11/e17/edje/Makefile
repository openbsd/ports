# $OpenBSD: Makefile,v 1.18 2011/01/16 11:49:39 jasper Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-1.0.0.beta2

REVISION =		0
EPOCH =			1

SHARED_LIBS +=		edje 1.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_x eet eina embryo evas expat fontconfig
WANTLIB += freetype glib-2.0 idn jpeg m pcre pthread
WANTLIB += pthread-stubs ssl xcb z lua

MODULES =		devel/gettext \
			lang/lua

USE_LIBTOOL =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		misc/shared-mime-info>=0.21

LIB_DEPENDS +=		x11/e17/ecore>=1.0 \
			x11/e17/embryo>=1.0

CONFIGURE_ARGS +=	--disable-doc
# perf ?
#	--enable-amalgamation
#	--enable-edje-program-cache
#    don't use floating point, for architectures without FPU
#	--enable-fixed-point

.include <bsd.port.mk>
