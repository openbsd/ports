# $OpenBSD: Makefile,v 1.8 2001/10/29 03:15:39 jcs Exp $

COMMENT=	"image viewer similar to ACDSee for Windows"

DISTNAME=	gtksee-0.5.0
CATEGORIES=	graphics
NEED_VERSION=	1.487

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	ftp://rt.fm/pub/gtksee/ \
		ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gtk
LIB_DEPENDS+=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.2::graphics/png
RUN_DEPENDS=	::archivers/bzip \
		::archivers/bzip2

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-im-libs="${PREFIX}/lib" \
		--with-im-incs="${PREFIX}/include"

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure

.include <bsd.port.mk>
