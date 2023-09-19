COMMENT=	clone of rxvt with Unicode and Xft support

DISTNAME=	rxvt-unicode-9.31
REVISION=	1
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	x11

FIX_EXTRACT_PERMISSIONS=	Yes

SITES=		http://dist.schmorp.de/rxvt-unicode/ \
		http://dist.schmorp.de/rxvt-unicode/Attic/

HOMEPAGE=	http://software.schmorp.de/pkg/rxvt-unicode.html

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

FLAVORS=	everything small
FLAVOR?=

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xmu Xt c m ptytty

COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.71

LIB_DEPENDS=	sysutils/libptytty

# update DESCR if changing build options
.if ${FLAVOR}== small
CONFIGURE_ARGS+=	--disable-everything \
			--enable-frills
.elif ${FLAVOR}== everything
CONFIGURE_ARGS+=	--enable-everything
.elif empty(FLAVOR)
CONFIGURE_ARGS+=	--enable-256-color
.else
ERRORS+=		"Fatal: invalid FLAVOR combination"
.endif

.if !${FLAVOR:Msmall}
LIB_DEPENDS+=	devel/gettext,-runtime \
		devel/startup-notification \
		graphics/gdk-pixbuf2
WANTLIB += Xext Xft Xrender fontconfig freetype gdk_pixbuf-2.0 glib-2.0
WANTLIB += gobject-2.0 intl perl startup-notification-1
.endif

FAKE_FLAGS=	INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

MAKE_ENV+=	TERMINFO=${WRKINST}${PREFIX}/share/terminfo

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" \
		pt_cv_tty_group=yes

.include <bsd.port.mk>
