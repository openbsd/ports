# $OpenBSD: Makefile,v 1.1.1.1 2010/01/11 15:05:49 jasper Exp $

COMMENT =		enlightenment DBus component
DISTNAME =		e_dbus-0.5.0.061

SO_VERSION =            0.0
.for _lib in edbus enotify enm ehal
SHARED_LIBS +=          ${_lib} ${SO_VERSION} \
			${_lib}-ver-svn-02 ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c crypto eet eina evas expat fontconfig freetype jpeg
WANTLIB += m pthread ssl z

USE_LIBTOOL =		Yes

LIB_DEPENDS =		dbus-1.>=7::x11/dbus \
			ecore::x11/e17/ecore \

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
