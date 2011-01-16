# $OpenBSD: Makefile,v 1.16 2011/01/16 11:41:16 jasper Exp $

COMMENT =		implementations of freedesktop.org specifications
DISTNAME =		efreet-1.0.0.beta2

REVISION =		0
EPOCH =			1

SO_VERSION =		1.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in efreet efreet_mime efreet_trash
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c cares crypto curl ecore ecore_con ecore_file eet
WANTLIB += eina glib-2.0 idn jpeg m pcre pthread ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/ecore>=1.0

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc
# enable strict specification compliance
#			--enable-strict-spec
# disable sloppy specification compliance
#			--disable-sloppy-spec

.include <bsd.port.mk>
