# $OpenBSD: Makefile.inc,v 1.25 2013/03/11 10:50:32 espie Exp $

COMMENT-main =		standalone XUL/XPCOM runtime environment
COMMENT-devel =		devel files for Gecko
PKGNAME =		xulrunner-${MOZILLA_VERSION}
PKGNAME-main =		xulrunner-${MOZILLA_VERSION}
PKGNAME-devel =		xulrunner-devel-${MOZILLA_VERSION}

MOZILLA_CODENAME =	xulrunner
CATEGORIES +=		devel

HOMEPAGE =		http://developer.mozilla.org/en/docs/XULRunner

MULTI_PACKAGES +=	-main -devel

# MPL
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =		www/mozilla devel/gettext lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS-main =	${LIB_DEPENDS}
WANTLIB-main =		${WANTLIB}

LIB_DEPENDS-devel =	${MODGETTEXT_LIB_DEPENDS} \
			devel/libIDL \
			${PKGNAME-main}:${BASE_PKGPATH},-main
WANTLIB-devel +=	${MODGETTEXT_WANTLIB} \
			c glib-2.0 gobject-2.0 m pthread stdc++ \
			IDL-2 nspr4 plc4 plds4

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/build/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--disable-javaxpcom \
			--enable-extensions=default,cookie,permissions
