# $OpenBSD: Makefile,v 1.5 2006/01/13 23:40:25 espie Exp $

COMMENT=	"source code editing component for GTK+"

VERSION=	1.54
DISTNAME=	scintilla${VERSION:S/.//}
PKGNAME=	scintilla-${VERSION}p1
CATEGORIES=	editors x11

SHARED_LIBS=		scintilla		3.0 \
			scintilla_lexers	3.0

HOMEPAGE=	http://www.scintilla.org/

MAINTAINER=	Joerg Sonnenberger <joerg@bec.de>

# old Python license
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scintilla/}
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FILE=	makefile
MAKE_ENV=	CXX='${CXX}' CXXFLAGS='${CXXFLAGS}' \
		NO_SHARED_LIBS='${NO_SHARED_LIBS:L}'

.for n v in ${SHARED_LIBS}
MAKE_ENV+=	LIB$n_VERSION=${LIB$n_VERSION}
.endfor

WRKDIST=	${WRKDIR}/scintilla
WRKSRC=		${WRKDIST}/gtk

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

post-extract:
	perl -pi -e 's|\x0d||' ${WRKDIST}/include/*.h ${WRKDIST}/gtk/*.cxx \
	    ${WRKDIST}/src/*.cxx

.include <bsd.port.mk>
