# $OpenBSD: Makefile,v 1.21 2001/04/17 03:40:57 kevlo Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

COMMENT=	"color vt102 terminal emulator with transparency support"

DISTNAME=	aterm-0.4.0
CATEGORIES=	x11
NEED_VERSION=	1.384
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= aterm

HOMEPAGE=	http://aterm.sourceforge.net/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.1::graphics/png

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-transparency \
		--enable-xgetdefault --enable-ttygid \
		--enable-background-image --enable-fading \
		--with-jpeg --with-png --enable-big5

post-patch:
	cd ${FILESDIR}; cp -f {cli_xcin.c,protocol.h,state.h} \
		${WRKSRC}/src

.include <bsd.port.mk>
