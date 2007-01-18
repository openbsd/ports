# $OpenBSD: Makefile,v 1.6 2007/01/18 10:56:27 steven Exp $

COMMENT=		"flexible and small GTK+ editor"

VERSION=		1.72
DISTNAME=		scite${VERSION:S/.//}
PKGNAME=		scite-${VERSION}
CATEGORIES=		editors x11

HOMEPAGE=		http://www.scintilla.org/SciTE.html

MAINTAINER=		Jeremy Evans <jeremyevans0@gmail.com>

# old Python license
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xrender c m z pthread stdc++ fontconfig \
			freetype \
			glib-2.0 gobject-2.0 gthread-2.0 gmodule-2.0 \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			cairo atk-1.0 glitz png

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=		.tgz

MODULES=	        devel/gettext

LIB_DEPENDS=		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
			scintilla.>=4,scintilla_lexers.>=4::editors/scintilla

USE_GMAKE=		Yes
USE_X11=		Yes
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
