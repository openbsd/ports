# $OpenBSD: Makefile,v 1.5 2005/11/13 14:23:21 wilfried Exp $
# XXX hardcoded apm list

COMMENT=	"window bar for holding application launchers"
DISTNAME=	matchbox-panel-0.9.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/matchbox-panel/0.9/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	mb.1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.600.0 gmodule-2.0.600.0 gobject-2.0.600.0 jpeg \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangoxft-1.0.0.0 png

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-nls
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		HAVEGETTEXT="yes" \
		INTLIBS="-liconv -lintl" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

.if ${MACHINE_ARCH} == "i386" || ${ARCH} == "macppc" \
	|| ${MACHINE_ARCH} == "sparc" || ${ARCH} == "zaurus"
PKG_ARGS+=-DAPM=1
.else
PKG_ARGS+=-DAPM=0
.endif
