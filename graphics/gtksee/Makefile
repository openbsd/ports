# $OpenBSD: Makefile,v 1.1.1.1 2000/12/13 16:14:05 camield Exp $

DISTNAME=	gtksee-0.5.0
HOMEPAGE=	http://hotaru.clinuxworld.com/gtksee/

CATEGORIES=	graphics
NEED_VERSION=	1.340
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	ftp://rt.fm/pub/gtksee/ \
		ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1::x11/gtk+ \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1::graphics/png
RUN_DEPENDS=	bzip::archivers/bzip \
		bzip2::archivers/bzip2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-im-libs=${PREFIX}/lib --with-im-incs=${PREFIX}/include

.include <bsd.port.mk>
