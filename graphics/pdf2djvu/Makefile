# $OpenBSD: Makefile,v 1.11 2016/12/07 21:23:47 juanfra Exp $

# XXX Don't update until the upstream bugs 113 and 114 are resolved
# https://bitbucket.org/jwilk/pdf2djvu/issues

COMMENT =		creates DjVu files from PDF files

V =			0.8.1
DISTNAME =		pdf2djvu-${V}
REVISION =		1

CATEGORIES =		graphics

HOMEPAGE =		http://jwilk.net/software/pdf2djvu

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GraphicsMagick GraphicsMagick++ c djvulibre iconv intl lzma m
WANTLIB += poppler pthread stdc++ xml2 xslt z

MASTER_SITES =		https://github.com/jwilk/pdf2djvu/releases/download/${V}/ \
			http://download.tuxfamily.org/jod/graphics/pdf2djvu/ \
			ftp://download.tuxfamily.org/jod/graphics/pdf2djvu/

EXTRACT_SUFX =		.tar.xz

# https://code.google.com/p/pdf2djvu/wiki/BuildDepends
LIB_DEPENDS =		devel/gettext\
			graphics/djvulibre \
			graphics/GraphicsMagick \
			print/poppler \
			textproc/libxslt
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
