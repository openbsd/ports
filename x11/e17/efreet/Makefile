# $OpenBSD: Makefile,v 1.12 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT =		implementations of freedesktop.org specifications
DISTNAME =		efreet-0.5.0.061

EPOCH=		0
REVISION=	0

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

WANTLIB +=	c crypto eina m ssl ecore ecore_con ecore_file

LIB_DEPENDS =	::x11/e17/ecore

USE_LIBTOOL =	Yes

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lcrypto"

.include <bsd.port.mk>
