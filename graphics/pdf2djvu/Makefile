# $OpenBSD: Makefile,v 1.12 2016/12/15 21:44:31 juanfra Exp $

COMMENT =		creates DjVu files from PDF files

V =			0.9.5
DISTNAME =		pdf2djvu-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://jwilk.net/software/pdf2djvu

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GraphicsMagick GraphicsMagick++ c djvulibre exiv2 iconv intl m
WANTLIB += poppler pthread stdc++

MASTER_SITES =		https://github.com/jwilk/pdf2djvu/releases/download/${V}/ \
			http://download.tuxfamily.org/jod/graphics/pdf2djvu/ \
			ftp://download.tuxfamily.org/jod/graphics/pdf2djvu/

EXTRACT_SUFX =		.tar.xz

# https://code.google.com/p/pdf2djvu/wiki/BuildDepends
LIB_DEPENDS =		devel/gettext\
			graphics/djvulibre \
			graphics/exiv2 \
			graphics/GraphicsMagick \
			print/poppler
TEST_DEPENDS =		devel/py-nose

# Weird things like "API specificationu[3]d for details"
USE_GROFF =		Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-openmp \
			--disable-rpath \
			--without-pstreams
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

TEST_TARGET = test

WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
