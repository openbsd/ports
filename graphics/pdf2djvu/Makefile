# $OpenBSD: Makefile,v 1.39 2020/03/10 16:14:59 juanfra Exp $

COMMENT =		creates DjVu files from PDF files

V =			0.9.17
DISTNAME =		pdf2djvu-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://jwilk.net/software/pdf2djvu

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GraphicsMagick GraphicsMagick++ c djvulibre exiv2 iconv intl m
WANTLIB += poppler pthread ${LIBCXX}

MASTER_SITES =		https://github.com/jwilk/pdf2djvu/releases/download/${V}/ \
			https://download.tuxfamily.org/jod/graphics/pdf2djvu/ \
			ftp://download.tuxfamily.org/jod/graphics/pdf2djvu/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/gettext,-runtime\
			graphics/djvulibre \
			graphics/exiv2 \
			graphics/GraphicsMagick \
			print/poppler
TEST_DEPENDS =		devel/py-nose

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
