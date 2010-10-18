# $OpenBSD: Makefile,v 1.34 2010/10/18 21:25:09 espie Exp $

COMMENT= 	PostScript and PDF previewer

DISTNAME=	gv-3.7.1
CATEGORIES=	print

HOMEPAGE=	http://www.gnu.org/software/gv/

MASTER_SITES=	${MASTER_SITE_GNU:=gv/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xmu Xpm Xt c m Xaw3d Xinerama

MODULES=	converters/libiconv

LIB_DEPENDS=	::x11/Xaw3d
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-SIGCHLD-fallback \
			--enable-scrollbar-code
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"
USE_X11=		Yes
USE_GROFF =	Yes

FAKE_FLAGS+=		appdefaultsdir="${PREFIX}/lib/X11/app-defaults/"

.include <bsd.port.mk>
