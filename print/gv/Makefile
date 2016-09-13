# $OpenBSD: Makefile,v 1.42 2016/09/13 18:52:05 naddy Exp $

COMMENT= 	PostScript and PDF previewer

DISTNAME=	gv-3.7.4
CATEGORIES=	print

HOMEPAGE=	https://www.gnu.org/software/gv/

MASTER_SITES=	${MASTER_SITE_GNU:=gv/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xmu Xpm Xt c iconv m Xaw3d Xinerama

LIB_DEPENDS=	converters/libiconv \
		x11/Xaw3d
RUN_DEPENDS=	print/ghostscript/gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-SIGCHLD-fallback \
			--enable-scrollbar-code
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		appdefaultsdir="${PREFIX}/lib/X11/app-defaults/"

.include <bsd.port.mk>
