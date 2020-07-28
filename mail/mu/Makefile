# $OpenBSD: Makefile,v 1.20 2020/07/28 13:41:55 abieber Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

V=		1.4.12
GUILE_V=	2.2

DISTNAME=	mu-$V

FLAVORS=	guile
FLAVOR ?=

SHARED_LIBS=	guile-mu	0.0

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} assuan c curses ffi gio-2.0 glib-2.0
WANTLIB += gmime-3.0 gmodule-2.0 gobject-2.0 gpg-error gpgme gthread-2.0
WANTLIB += iconv idn2 intl json-glib-1.0 m pcre readline unistring
WANTLIB += uuid xapian z

MASTER_SITES=	https://github.com/djcb/mu/releases/download/${V}/
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
			--disable-webkit

.if ${FLAVOR} == "guile"
WANTLIB +=		guile-${GUILE_V} gc ltdl gmp
LIB_DEPENDS +=		lang/guile2
.else
CONFIGURE_ARGS +=	--disable-guile
.endif

USE_GMAKE=		Yes

SEPARATE_BUILD=		Yes

pre-configure:
	sed -e 's/exec guile/exec guile${GUILE_V}/' -i \
		${WRKDIST}/guile/*/*.scm
	sed -e 's/guile-snarf/guile-snarf${GUILE_V}/' -i \
 		${WRKDIST}/configure.ac

.include <bsd.port.mk>
