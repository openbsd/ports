# $OpenBSD: Makefile,v 1.3 1999/04/08 04:17:05 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/06/21 02:42:33 jseger Exp $

DISTNAME=	freetype-1.2
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.tux.org/pub/devel/freetype/ \
		ftp://ftp.lerc.nasa.gov/ImageMagick/delegates/ \
		ftp://ftp.wizards.dupont.com/pub/ImageMagick/delegates/ \
		ftp://ftp.kddlabs.co.jp/.6/graphics/freetype/ \
		ftp://ring.aist.go.jp/pub/graphics/freetype/ \
		ftp://ftp.unina.it/pub/Unix/pkgs/font/freetype/

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

USE_GMAKE=	yes
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-nls

# People that installed an older version of freetype wound up with a
# shared lib with just a major (FreeBSD ELF versioning)... these files
# MUST be removed as the version was incorrect (it came from 1.1
# sources). Check that out here (and bitch if necessary).
#
pre-extract:
	@if [ -f ${LOCALBASE}/lib/libttf.so.2 ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing freetype installation"; \
	   echo "| before installing this version. To fully remove run"; \
	   echo "| these commands as user root"; \
	   echo "|"; \
	   echo "|      pkg_delete -f `pkg_info -e 'freetype-*'`"; \
	   echo "|      ldconfig ${LOCALBASE}/lib"; \
	   echo "|"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

.include <bsd.port.mk>
