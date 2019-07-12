# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:30 sthen Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

GH_TAGNAME=	v1.0
GH_ACCOUNT=	djcb
GH_PROJECT=	mu

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/
REVISION =	1

# GPLv3
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	emacs->=24:editors/emacs

LIB_DEPENDS=	databases/xapian-core \
		devel/glib2 \
		mail/gmime \
		security/gpgme

WANTLIB += assuan c ffi gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpgme gthread-2.0 iconv
WANTLIB += intl m pcre pthread ${COMPILER_LIBCXX} uuid xapian z

# C++14 required
COMPILER=	base-clang ports-clang

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--disable-gtk \
			--disable-webkit \
			--disable-guile

USE_GMAKE=		Yes

.include <bsd.port.mk>
