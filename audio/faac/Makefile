# $OpenBSD: Makefile,v 1.9 2011/06/29 10:57:17 jasper Exp $

COMMENT=	MPEG-2 and MPEG-4 AAC encoder
DISTNAME=	faac-1.28
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}
SHARED_LIBS +=	faac                 1.0      # .0.0

HOMEPAGE=	http://www.audiocoding.com/

# GPL
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m stdc++ mp4v2>=3

# uses macros from libtool.m4
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		devel/libtool
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

LIB_DEPENDS=	multimedia/libmp4v2

CONFIGURE_STYLE= gnu
AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.4
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--without-mp4v2

post-patch:
	@touch ${WRKSRC}/frontend/dummy.cc
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh bootstrap

# XXX: autoconf-voodoo priest could offer their services?
post-configure:
	perl -pi -e 's,(ACLOCAL|AUTOCONF|AUTOMAKE|AUTOHEADER) = ,\1 = AUTOCONF_VERSION=${AUTOCONF_VERSION} ,g' \
		${WRKSRC}/Makefile

# paths in install target are messed up.
post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/faac.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
