# $OpenBSD: Makefile,v 1.5 2006/10/31 19:52:36 espie Exp $

COMMENT=		"flexible and small GTK+ editor"

VERSION=		1.54
DISTNAME=		scite${VERSION:S/.//}
PKGNAME=		scite-${VERSION}p0
CATEGORIES=		editors x11

HOMEPAGE=		http://www.scintilla.org/SciTE.html

# old Python license
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c gdk glib gmodule gtk iconv intl m\
			pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=		.tgz

LIB_DEPENDS=		gthread.>=1.2::devel/glib \
			scintilla.>=1,scintilla_lexers.>=1::editors/scintilla

USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/scite
WRKSRC=			${WRKDIST}/gtk
MAKE_FILE=		makefile

post-extract:
	perl -pi -e 's|\x0d||' ${WRKDIST}/gtk/*.cxx ${WRKDIST}/src/*.cxx

.include <bsd.port.mk>
