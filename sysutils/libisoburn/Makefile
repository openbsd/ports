COMMENT-main =		create ISO-9660 filesystem and burn CD/DVD/BD media
COMMENT-xorriso =	ISO 9660 Rock Ridge Filesystem Manipulator
COMMENT-tcltk =		frontend for xorriso

V =	1.5.4
DISTNAME =	libisoburn-${V}
SHARED_LIBS +=	isoburn 0.1 # 112.0

PKGNAME-main =		${PKGNAME}
PKGNAME-xorriso =	xorriso-${V}
PKGNAME-tcltk =		xorriso-tcltk-${V}

MULTI_PACKAGES =	-main -xorriso -tcltk

CATEGORIES =	sysutils

HOMEPAGE =	https://dev.lovelyhq.com/libburnia/web/wikis/Libisoburn
SITES =		http://files.libburnia-project.org/releases/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		x11/tk

LIB_DEPENDS-main =	sysutils/libisofs>=$V \
			sysutils/libburn>=$V
WANTLIB-main =		burn curses iconv isofs pthread readline z
LIB_DEPENDS-xorriso =	${BASE_PKGPATH},-main
WANTLIB-xorriso =	${WANTLIB-main} c isoburn
RUN_DEPENDS-tcltk =	${MODTCL_RUN_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-pkg-check-modules

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

post-patch:
	perl -pi -e 's#/usr/bin/wish#${MODTK_BIN}#' ${WRKSRC}/frontend/xorriso-tcltk
#	@${MODTCL_WISH_ADJ} ${WRKSRC}/frontend/xorriso-tcltk

.include <bsd.port.mk>
