# $OpenBSD: Makefile,v 1.5 2016/11/04 11:35:19 sthen Exp $

COMMENT=		text based IM client

DISTNAME=		centerim-4.22.10
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://www.centerim.org/
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan c crypto curl gpg-error gpgme jpeg m ncursesw nghttp2
WANTLIB += pthread ssl stdc++ z

MASTER_SITES=		http://centerim.org/download/releases/

MODULES=		devel/gettext \
			lang/python

MODPY_BUILD_DEPENDS=	No
MODPY_RUN_DEPENDS=	No

MODPY_ADJ_FILES=	misc/CenterIMLog2HTML.py

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/libidn \
			graphics/jpeg \
			net/curl \
			security/gpgme

AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--enable-locales-fix \
			--with-ssl \
			--with-openssl \
			--with-libiconv-prefix \
			--with-ncurses

.include <bsd.port.mk>
