#$OpenBSD: Makefile,v 1.9 2001/10/28 12:30:14 espie Exp $

COMMENT=	"graphical file comparator and merge tool"

DISTNAME=	xxdiff-1.13
CATEGORIES=	textproc x11
NEED_VERSION=	1.483
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= xxdiff

HOMEPAGE=	http://xxdiff.sourceforge.net/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	qt2
BUILD_DEPENDS=	::devel/bison \
		::x11/qt2-designer

USE_GMAKE=	Yes
USE_X11=	Yes

SEPARATE_BUILD= concurrent

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	QTDIR="${LOCALBASE}"  \
		USER_LDFLAGS="-L${MODQT_LIBDIR} -L${LOCALBASE}/lib/X11 -L${LOCALBASE}/lib" \
		USER_INCLUDES="-I${MODQT_INCDIR} -I${LOCALBASE}/include/X11 -I${LOCALBASE}/include" \
		MOC=${MODQT_MOC}
MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=     CXXLD='${CXX} -L${MODQT_LIBDIR}'

post-patch:
	@cd ${WRKSRC} && perl automoc -v

.include <bsd.port.mk>
