# $OpenBSD: Makefile,v 1.12 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT =		complex graphical design & layout library
DISTNAME =		edje-0.9.92.061

EPOCH=		0
REVISION=	2

SHARED_LIBS +=		edje                 0.1 \
			edje-ver-svn-02      0.1

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xss Xtst c crypto eet eina
WANTLIB += evas expat fontconfig freetype jpeg m pthread pthread-stubs
WANTLIB += ssl xcb z ecore ecore_imf_evas ecore_imf ecore_con embryo
WANTLIB += ecore_evas ecore_file ecore_input ecore_job ecore_txt ecore_x

USE_X11 =		Yes

MODULES =		converters/libiconv \
			lang/python

USE_LIBTOOL =		Yes

LIB_DEPENDS =		::x11/e17/ecore \
			::x11/e17/embryo

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
