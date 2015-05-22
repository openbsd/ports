# $OpenBSD: Makefile,v 1.19 2015/05/22 11:31:16 ajacoutot Exp $

COMMENT-main =	japanese input method
COMMENT-emacs =	emacs files for anthy

V =		9100h
DISTNAME =	anthy-$V
PKGNAME-main =	anthy-$V
PKGNAME-emacs =	emacs-anthy-$V
REVISION-main = 1
REVISION-emacs = 2

SHARED_LIBS +=	anthydic             1.0      # .1.0
SHARED_LIBS +=	anthy                1.0      # .1.0
SHARED_LIBS +=	anthyinput           1.0      # .0.0

CATEGORIES =	inputmethods japanese

HOMEPAGE = 	http://anthy.sourceforge.jp/

# GPL, part LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =	c m

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=anthy/37536/}

FAKE_FLAGS =	sysconfdir=$(PREFIX)/share/examples/anthy

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib' \
		SWIG=no

PSEUDO_FLAVORS = no_emacs
FLAVOR ?=

MULTI_PACKAGES = -main -emacs
.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-emacs}
BUILD_DEPENDS =	emacs->=24:editors/emacs
.else
CONFIGURE_ENV += EMACS=no
.endif

# can't make sense of any of these tests
NO_TEST =	Yes

.include <bsd.port.mk>
