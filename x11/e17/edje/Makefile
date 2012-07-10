# $OpenBSD: Makefile,v 1.22 2012/07/10 15:22:45 jasper Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-1.0.0

REVISION =		2
EPOCH =			2

# XXX stop lua module creating a no-arch package
SHARED_ONLY =		Yes

SHARED_LIBS +=		edje 1.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl ecore ecore_con
WANTLIB += ecore_evas ecore_file ecore_imf ecore_imf_evas ecore_input
WANTLIB += ecore_input_evas ecore_x eet eina embryo evas expat fontconfig
WANTLIB += freetype fribidi glib-2.0 idn jpeg m pcre pthread
WANTLIB += ssl xcb z ${MODLUA_WANTLIB

MODULES =		devel/gettext \
			lang/lua

USE_LIBTOOL =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		misc/shared-mime-info>=0.21

LIB_DEPENDS +=		x11/e17/ecore>=1.0 \
			x11/e17/embryo>=1.0 \
			${MODLUA_LIB_DEPENDS} \
			devel/fribidi

CONFIGURE_ARGS +=	--disable-doc
# perf ?
#	--enable-amalgamation
#	--enable-edje-program-cache
#    don't use floating point, for architectures without FPU
#	--enable-fixed-point

.include <bsd.port.mk>
