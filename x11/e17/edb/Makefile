# $OpenBSD: Makefile,v 1.6 2010/01/11 15:01:29 jasper Exp $

COMMENT =		database convenience library based on db 2.7.7
DISTNAME =		edb-20071211
PKGNAME =		${DISTNAME}p0

SHARED_LIBS +=	edb                  0.0      # .1.5

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c ncurses

USE_LIBTOOL =		Yes

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
AUTOMAKE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=		--disable-gtk

post-patch:
	@cd ${WRKSRC} && ${SETENV} ${AUTOMAKE_ENV} NOCONFIGURE=true \
		${SH} autogen.sh

.include <bsd.port.mk>
