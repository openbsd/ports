# $OpenBSD: Makefile,v 1.25 2002/01/09 19:53:11 mark Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

COMMENT=	"color vt102 terminal emulator with transparency support"

DISTNAME=	aterm-0.4.2
CATEGORIES=	x11
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= aterm

HOMEPAGE=	http://aterm.sourceforge.net/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png

MAINTAINER=	Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-utmp --enable-wtmp \
		--with-xpm --enable-transparency \
		--enable-xgetdefault --enable-ttygid \
		--enable-background-image --enable-fading \
		--with-jpeg --with-png

FLAVORS=	big5
FLAVOR?=

.if ${FLAVOR:L:Mbig5}
RUN_DEPENDS=	${LOCALBASE}/lib/X11/fonts/chinese/taipei16.pcf.gz::chinese/taipeifonts
PATCH_LIST=	patch-src_Makefile_in \
		patch-src_command_c

CONFIGURE_ARGS+= --enable-big5

post-patch:
	@cd ${FILESDIR}; cp -f {cli_xcin.c,protocol.h,state.h} \
		${WRKSRC}/src
.else
PATCH_LIST=
.endif

.include <bsd.port.mk>
