# $OpenBSD: Makefile,v 1.30 2016/11/04 11:35:21 sthen Exp $

COMMENT =		implementations of freedesktop.org specifications

DISTNAME =		efreet-1.7.10
EPOCH =			2
REVISION =		1

SO_VERSION =		4.0	# 8.10
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in efreet efreet_mime efreet_trash
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cares crypto curl ecore ecore_con ecore_file eet eina
WANTLIB += glib-2.0 jpeg m nghttp2 pcre pthread ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/ecore>=1.7.10v2

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
