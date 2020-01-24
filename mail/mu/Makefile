# $OpenBSD: Makefile,v 1.19 2020/01/24 10:36:41 sthen Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

DISTNAME=	mu-1.2.0
REVISION=	0

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} assuan c ffi gio-2.0 glib-2.0 gmime-3.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gpgme gthread-2.0
WANTLIB += iconv idn2 intl json-glib-1.0 m pcre unistring uuid
WANTLIB += xapian z

MASTER_SITES=	https://github.com/djcb/mu/releases/download/1.2/
EXTRACT_SUFX=	.tar.xz

BUILD_DEPENDS=	emacs->=24:editors/emacs

LIB_DEPENDS=	databases/xapian-core \
		devel/glib2 \
		devel/json-glib \
		mail/gmime30 \
		security/gpgme

# C++14
COMPILER=	base-clang ports-gcc

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--disable-gtk \
			--disable-webkit \
			--disable-guile

USE_GMAKE=		Yes

.include <bsd.port.mk>
