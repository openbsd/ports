# $OpenBSD: Makefile,v 1.44 2015/11/12 15:43:03 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		module to interface with the GD graphics library

DISTNAME =		GD-2.56
CATEGORIES =		graphics

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fontconfig freetype gd jpeg m png tiff vpx z

LIB_DEPENDS =		graphics/gd

MODULES =		converters/libiconv \
			cpan

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
