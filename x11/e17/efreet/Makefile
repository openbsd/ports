# $OpenBSD: Makefile,v 1.27 2013/12/06 13:16:45 dlg Exp $

COMMENT =		implementations of freedesktop.org specifications

DISTNAME =		efreet-1.7.9
EPOCH =			2

SO_VERSION =		3.0	# 8.6
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in efreet efreet_mime efreet_trash
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cares crypto curl ecore ecore_con ecore_file eet
WANTLIB += eina glib-2.0 idn jpeg m pcre pthread ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/ecore>=1.7.9v2

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
