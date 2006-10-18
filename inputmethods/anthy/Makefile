# $OpenBSD: Makefile,v 1.2 2006/10/18 23:57:58 espie Exp $
COMMENT=	'japanese input method'
COMMENT-emacs=	'emacs files for anthy'

CATEGORIES=	japanese inputmethods

V=		7900
MULTI_PACKAGES=	-emacs
DISTNAME=	anthy-$V
PKGNAME-emacs=	emacs-anthy-$V

HOMEPAGE= 	http://anthy.sourceforge.jp/
MASTER_SITES=	http://dl.sourceforge.jp/anthy/20887/

# GPL, part LGPL

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

SHARED_LIBS=	anthy 0.0 \
		anthydic 0.0 \
		anthyinput 0.0

BUILD_DEPENDS=	::editors/emacs21

CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${LOCALBASE}/lib'

FAKE_FLAGS=	DESTDIR=${WRKINST} sysconfdir=$(PREFIX)/share/examples/anthy

SUBPACKAGE?=

.if !defined(PACKAGING) || defined(PACKAGING) && ${SUBPACKAGE} == ""
WANTLIB=	c m
.endif

# can't make sense of any of these tests
NO_REGRESS=	Yes

.include <bsd.port.mk>
