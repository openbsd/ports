# $OpenBSD: Makefile,v 1.10 2010/01/24 11:52:37 espie Exp $

COMMENT =		implementations of freedesktop.org specifications
DISTNAME =		efreet-0.5.0.061
PKGNAME =		${DISTNAME}p0v0

SO_VERSION =            0.1
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in efreet efreet_mime efreet_trash
SHARED_LIBS +=          ${_lib} ${SO_VERSION} \
			${_lib}-ver-svn-02 ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	c crypto eina m ssl

LIB_DEPENDS =	ecore,ecore_con,ecore_file::x11/e17/ecore

USE_LIBTOOL =	Yes

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lcrypto"

.include <bsd.port.mk>
