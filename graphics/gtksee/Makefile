# $OpenBSD: Makefile,v 1.4 2001/05/24 02:27:55 kevlo Exp $

DISTNAME=	gtksee-0.5.0
CATEGORIES=	graphics
COMMENT=	"image viewer similar to ACDSee for Windows"
HOMEPAGE=	http://hotaru.clinuxworld.com/gtksee/

NEED_VERSION=	1.405

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
		png.2::graphics/png \
		intl.1::devel/gettext
RUN_DEPENDS=	bzip::archivers/bzip \
		bzip2::archivers/bzip2

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-im-libs=${PREFIX}/lib \
			--with-im-incs=${PREFIX}/include

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure

.include <bsd.port.mk>
