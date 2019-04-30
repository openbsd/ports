# $OpenBSD: Makefile,v 1.15 2019/04/30 10:51:33 solene Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

GH_TAGNAME=	v1.0
GH_ACCOUNT=	djcb
GH_PROJECT=	mu

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/
REVISION =	1

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		emacs->=24:editors/emacs

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
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-gtk \
			--disable-webkit \
			--disable-guile

USE_GMAKE=		Yes

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
