# $OpenBSD: Makefile,v 1.2 2015/07/03 01:36:48 abieber Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

GH_TAGNAME=	v0.9.12
GH_ACCOUNT=	djcb
GH_PROJECT=	mu
DISTNAME=	mu-${GH_TAGNAME:S/v//}

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		emacs->=24:editors/emacs

LIB_DEPENDS=	databases/xapian-core \
		devel/glib2 \
		mail/gmime

WANTLIB += c ffi gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread stdc++ uuid xapian z

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
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
