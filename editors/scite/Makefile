# $OpenBSD: Makefile,v 1.17 2010/10/24 21:16:25 ajacoutot Exp $

COMMENT=		flexible and small GTK+ editor

VERSION=		2.21
DISTNAME=		scite${VERSION:S/.//}
PKGNAME=		scite-${VERSION}
REVISION=		0
CATEGORIES=		editors x11

HOMEPAGE=		http://www.scintilla.org/SciTE.html

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# old Python license
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	may not sell
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb z
WANTLIB += gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += scintilla.>=7 scintilla_lexers.>=7

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=		.tgz

MODULES=	        devel/gettext

LIB_DEPENDS=		::x11/gtk+2 \
			::editors/scintilla

USE_GMAKE=		Yes
NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/scite
WRKSRC=			${WRKDIST}/gtk
MAKE_FILE=		makefile
MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-extract:
	perl -pi -e 's|\x0d||' ${WRKSRC}/*.cxx ${WRKDIST}/src/*.cxx

pre-build:
	perl -pi -e 's|__DOCDIR__|${LOCALBASE}/share/doc/scite|' \
		${WRKDIST}/src/*.properties

.include <bsd.port.mk>
