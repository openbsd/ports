# $OpenBSD: Makefile,v 1.17 2000/07/03 04:43:54 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.4.0
CATEGORIES=	x11
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= aterm

HOMEPAGE=	http://aterm.sourceforge.net/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.1::graphics/png

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-transparency \
		--enable-xgetdefault --enable-background-image \
		--enable-fading --with-jpeg --with-png

.include <bsd.port.mk>
