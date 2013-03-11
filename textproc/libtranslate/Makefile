# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:42 espie Exp $

SHARED_LIBS +=  translate                 0.0 # 0.0

COMMENT=	library/CLI tool interfacing to online translation services

DISTNAME=	libtranslate-0.99
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	http://www.nongnu.org/libtranslate/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi glib-2.0 gio-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre pthread soup-2.4 xml2

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=libtranslate/}

MODULES=	devel/gettext
LIB_DEPENDS=	devel/glib2 \
		devel/libsoup \
		textproc/libxml
BUILD_DEPENDS +=	textproc/p5-XML-Parser

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59

CFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
