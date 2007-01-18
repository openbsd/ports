# $OpenBSD: Makefile,v 1.8 2007/01/18 10:56:27 steven Exp $

COMMENT=	"source code editing component for GTK+"

VERSION=	1.72
DISTNAME=	scintilla${VERSION:S/.//}
PKGNAME=	scintilla-${VERSION}
CATEGORIES=	editors x11

SHARED_LIBS=	scintilla		4.0 \
		scintilla_lexers	4.0

HOMEPAGE=	http://www.scintilla.org/

MAINTAINER=	Jeremy Evans <jeremyevans0@gmail.com>

# old Python license
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FILE=	makefile
MAKE_ENV=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' \
		NO_SHARED_LIBS='${NO_SHARED_LIBS:L}'

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2

.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

WRKDIST=	${WRKDIR}/scintilla
WRKSRC=		${WRKDIST}/gtk

post-extract:
	perl -pi -e 's|\x0d||' ${WRKDIST}/include/*.h ${WRKDIST}/gtk/*.cxx \
	    ${WRKDIST}/src/*.cxx

pre-build:
	perl -pi -e 's|/usr/local|${LOCALBASE}|' ${WRKSRC}/${MAKE_FILE}

.include <bsd.port.mk>
