# $OpenBSD: Makefile,v 1.48 2019/07/12 20:47:05 sthen Exp $

COMMENT =		module to interface with the GD graphics library

DISTNAME =		GD-2.56
CATEGORIES =		graphics
REVISION =		0

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c fontconfig freetype gd iconv jpeg m perl png tiff webp z

LIB_DEPENDS =		converters/libiconv \
			graphics/gd

MODULES =		cpan

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demos

post-extract:
	chmod o+w ${WRKSRC}/bdf_scripts/bdf2gdfont.pl

post-install:
	cd ${PREFIX} && rm -f \
		bin/README \
		bin/bdf2gdfont.PLS \
		bin/bdftogd \
		bin/cvtbdf.pl \
		man/man1/bdf2gdfont.PLS.1

.include <bsd.port.mk>
