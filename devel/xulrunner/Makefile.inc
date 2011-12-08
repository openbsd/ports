# $OpenBSD: Makefile.inc,v 1.22 2011/12/08 00:19:07 nigel Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# lots of logic in mozilla.port.mk
MODULES =		www/mozilla devel/gettext lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS-main =	${LIB_DEPENDS}
WANTLIB-main =		${WANTLIB}

LIB_DEPENDS-devel =	${MODGETTEXT_LIB_DEPENDS} \
			devel/libIDL \
			${PKGNAME-main}:devel/xulrunner/${MOZILLA_VERSION:R:R},-main
WANTLIB-devel +=	${MODGETTEXT_WANTLIB} \
			c glib-2.0 gobject-2.0 gthread-2.0 m pthread stdc++ \
			IDL-2 nspr4 plc4 plds4 \
			${MOZILLA_PROJECT}/mozjs ${MOZILLA_PROJECT}/xpcom \
			${MOZILLA_PROJECT}/xul

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/build/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--disable-javaxpcom \
			--enable-extensions=default,cookie,permissions
