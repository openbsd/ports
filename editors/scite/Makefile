# $OpenBSD: Makefile,v 1.12 2009/06/17 01:53:32 sthen Exp $

COMMENT=		flexible and small GTK+ editor

VERSION=		1.76
DISTNAME=		scite${VERSION:S/.//}
PKGNAME=		scite-${VERSION}p1
CATEGORIES=		editors x11

HOMEPAGE=		http://www.scintilla.org/SciTE.html

MAINTAINER=		Jeremy Evans <openbsd@jeremyevans.net>

# old Python license
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	may not sell
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=		.tgz

MODULES=	        devel/gettext

LIB_DEPENDS=		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
			scintilla.>=6,scintilla_lexers.>=6::editors/scintilla

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
