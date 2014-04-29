# $OpenBSD: Makefile.inc,v 1.27 2014/04/29 21:37:20 landry Exp $

COMMENT-main =		standalone XUL/XPCOM runtime environment
COMMENT-devel =		devel files for Gecko
PKGNAME =		xulrunner-${MOZILLA_VERSION:S/esr//}
PKGNAME-main =		xulrunner-${MOZILLA_VERSION:S/esr//}
PKGNAME-devel =		xulrunner-devel-${MOZILLA_VERSION:S/esr//}

MOZILLA_CODENAME =	xulrunner
CATEGORIES +=		devel

HOMEPAGE =		http://developer.mozilla.org/en/docs/XULRunner

MULTI_PACKAGES +=	-main -devel

# MPL
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES +=		www/mozilla devel/gettext lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS-main =	${LIB_DEPENDS}
WANTLIB-main =		${WANTLIB}

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/build/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--disable-javaxpcom \
			--enable-extensions=default,cookie,permissions
