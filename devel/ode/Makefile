# $OpenBSD: Makefile,v 1.1.1.1 2009/08/03 14:14:10 jasper Exp $

COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS +=  ode                  0.0      # .2.1
DISTNAME =	ode-0.11.1
CATEGORIES =	devel

MAINTAINER =	Jonathan Armani <dbd@asystant.net>
HOMEPAGE =	http://www.ode.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opende/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		m pthread

USE_LIBTOOL=		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--enable-shared
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ode
	${INSTALL_DATA} ${WRKSRC}/LICENSE.TXT ${PREFIX}/share/doc/ode/LICENSE
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/ode/README

.include <bsd.port.mk>
