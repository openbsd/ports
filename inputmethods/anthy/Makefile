# $OpenBSD: Makefile,v 1.26 2020/08/24 13:42:26 jca Exp $

COMMENT-main =	japanese input method
COMMENT-emacs =	emacs files for anthy

V =		9100h
DISTNAME =	anthy-$V
PKGNAME-main =	anthy-$V
PKGNAME-emacs =	emacs-anthy-$V
REVISION-main = 2
REVISION-emacs = 5

SHARED_LIBS +=	anthydic             1.0      # .1.0
SHARED_LIBS +=	anthy                1.0      # .1.0
SHARED_LIBS +=	anthyinput           1.0      # .0.0

CATEGORIES =	inputmethods japanese

HOMEPAGE = 	https://anthy.osdn.jp/

# GPL, part LGPL
PERMIT_PACKAGE =	Yes

WANTLIB-main =	c m

MASTER_SITES =	${MASTER_SITE_OSDN_JP:=anthy/37536/}

FAKE_FLAGS =	sysconfdir=$(PREFIX)/share/examples/anthy

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib ${LDFLAGS}' \
		SWIG=no

PSEUDO_FLAVORS = no_emacs
FLAVOR ?=

MULTI_PACKAGES = -main -emacs
.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-emacs}
BUILD_DEPENDS =	emacs->=24:editors/emacs,no_x11
.else
CONFIGURE_ENV += EMACS=no
.endif

# can't make sense of any of these tests
NO_TEST =	Yes

.include <bsd.port.mk>
