# $OpenBSD: Makefile,v 1.18 2001/03/25 17:24:35 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/06/21 02:42:33 jseger Exp $

COMMENT=	"free and portable TrueType font rendering engine"

DISTNAME=	freetype-1.3
CATEGORIES=	print
NEED_VERSION=	1.363
MASTER_SITES=	ftp://ftp.tux.org/pub/devel/freetype/ \
		ftp://ftp.lerc.nasa.gov/ImageMagick/delegates/ \
		ftp://ftp.shellhung.org/pub/Mirror/enlightenment/enlightenment/libs/ \
		ftp://ftp.kddlabs.co.jp/.6/graphics/freetype/ \
		ftp://ring.aist.go.jp/pub/graphics/freetype/ \
		ftp://ftp.unina.it/pub/Unix/pkgs/font/freetype/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-nls

.include <bsd.port.mk>
