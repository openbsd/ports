# $OpenBSD: Makefile,v 1.11 2000/06/12 16:42:13 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/06/21 02:42:33 jseger Exp $

DISTNAME=	freetype-1.3
CATEGORIES=	print
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.tux.org/pub/devel/freetype/ \
		ftp://ftp.lerc.nasa.gov/ImageMagick/delegates/ \
		ftp://ftp.wizards.dupont.com/pub/ImageMagick/delegates/ \
		ftp://ftp.kddlabs.co.jp/.6/graphics/freetype/ \
		ftp://ring.aist.go.jp/pub/graphics/freetype/ \
		ftp://ftp.unina.it/pub/Unix/pkgs/font/freetype/

MAINTAINER=	jasoni@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
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

# Older versions of freetype installed include files in ${PREFIX}/include
# this is a compatibility hack for now.
post-install:
	@cd ${PREFIX}/include; ln -fs freetype/*.h .

.include <bsd.port.mk>
