# $OpenBSD: Makefile,v 1.1.1.1 2007/11/30 16:04:39 dlg Exp $

COMMENT=	implementations of freedesktop.org specifications
DISTNAME=	efreet-20071107
SHARED_LIBS +=	efreet               0.0      # .0.3
SHARED_LIBS +=	efreet_mime          0.0      # .0.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto curl idn m ssl z

MODULES=		devel/gettext

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
AUTOMAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

LIB_DEPENDS=		ecore,ecore_file::x11/e17/ecore
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-patch:
	cd ${WRKSRC} && ${SETENV} ${AUTOMAKE_ENV} NOCONFIGURE=true \
		${SH} autogen.sh

.include <bsd.port.mk>
