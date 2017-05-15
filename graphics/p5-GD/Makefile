# $OpenBSD: Makefile,v 1.47 2017/05/15 19:56:03 rsadowski Exp $

COMMENT =		module to interface with the GD graphics library

DISTNAME =		GD-2.56
CATEGORIES =		graphics
REVISION =		0

# perl
PERMIT_PACKAGE_CDROM =	Yes

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
