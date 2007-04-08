# $OpenBSD: Makefile,v 1.5 2007/04/08 14:58:04 espie Exp $
COMMENT-main=	'japanese input method'
COMMENT-emacs=	'emacs files for anthy'

CATEGORIES=	japanese inputmethods

V=		8300
MULTI_PACKAGES=	-main -emacs
DISTNAME=	anthy-$V
PKGNAME-main=	anthy-$V
PKGNAME-emacs=	emacs-anthy-$V

HOMEPAGE= 	http://anthy.sourceforge.jp/
MASTER_SITES=	http://dl.sourceforge.jp/anthy/22565/

# GPL, part LGPL

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

SHARED_LIBS +=	anthydic             0.0      # .1.0
SHARED_LIBS +=	anthy                0.0      # .1.0
SHARED_LIBS +=	anthyinput           0.0      # .0.0

BUILD_DEPENDS=	::editors/emacs21

CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${LOCALBASE}/lib'
CONFIGURE_ENV+=	SWIG=no

FAKE_FLAGS=	DESTDIR=${WRKINST} sysconfdir=$(PREFIX)/share/examples/anthy

WANTLIB-main=	c m

# can't make sense of any of these tests
NO_REGRESS=	Yes

.include <bsd.port.mk>
