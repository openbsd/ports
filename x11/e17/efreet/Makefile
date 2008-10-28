# $OpenBSD: Makefile,v 1.7 2008/10/28 14:29:14 jasper Exp $

COMMENT=	implementations of freedesktop.org specifications
DISTNAME=	efreet-20071211
PKGNAME=        ${DISTNAME}p2
SHARED_LIBS +=	efreet               0.0      # .0.3
SHARED_LIBS +=	efreet_mime          0.0      # .0.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto curl idn m ssl z

MODULES=		devel/gettext

LIB_DEPENDS=		ecore,ecore_file::x11/e17/ecore
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
