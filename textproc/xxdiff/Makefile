# $OpenBSD: Makefile,v 1.5 2001/05/25 17:02:01 lebel Exp $

COMMENT=	"graphical file comparator and merge tool"

DISTNAME=	xxdiff-1.10.0
CATEGORIES=	textproc x11
NEED_VERSION=	1.413
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= xxdiff

HOMEPAGE=	http://xxdiff.sourceforge.net/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	qt.2::x11/qt2
BUILD_DEPENDS=	bison::devel/bison \
		uic::x11/qt2-designer

USE_GMAKE=	Yes
USE_X11=	Yes

SEPARATE_BUILD= concurrent

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	QTDIR="${LOCALBASE}"  \
		USER_LDFLAGS="-L${LOCALBASE}/lib/qt2 -L${LOCALBASE}/lib/X11 -L${LOCALBASE}/lib" \
		USER_INCLUDES="-I${LOCALBASE}/include/X11/qt2 -I${LOCALBASE}/include/X11 -I${LOCALBASE}/include" \
		MOC="${LOCALBASE}/bin/moc2"
MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=     CXXLD='${CXX} -L${LOCALBASE}/lib/qt2'

post-patch:
	@perl ${WRKSRC}/automoc -v

.include <bsd.port.mk>


