# $OpenBSD: Makefile,v 1.3 2017/07/10 14:23:25 ajacoutot Exp $

# configure looks for ocamlopt
ONLY_FOR_ARCHS =	${OCAML_NATIVE_ARCHS}
COMMENT =	generator for sandwich OCR pdf files

DISTNAME =	pdfsandwich-0.1.6
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	http://www.tobias-elze.de/pdfsandwich/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfsandwich/}

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		lang/gawk \
			lang/ocaml
RUN_DEPENDS =		graphics/ImageMagick \
			graphics/tesseract/tesseract \
			print/ghostscript/gnu \
			print/poppler,-utils \
			print/unpaper

MAKE_FLAGS =		INSTALLMANDIR=${DESTDIR}${PREFIX}/man/man1

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX}

NO_TEST =		Yes

post-install:
	gunzip ${PREFIX}/man/man1/pdfsandwich.1.gz

.include <bsd.port.mk>
