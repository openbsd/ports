# $OpenBSD: Makefile,v 1.29 2002/06/09 06:09:24 jcs Exp $

DISTNAME=	aterm-0.4.2
CATEGORIES=	x11
NEED_VERSION=	1.509

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"color vt102 terminal emulator with transparency support"
HOMEPAGE=	http://aterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aterm/}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-xgetdefault --enable-ttygid --enable-utmp

FLAVORS=	big5 lite
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

.if ${FLAVOR:L:Mlite}
CONFIGURE_ARGS+= --without-xpm --disable-transparency \
		--disable-background-image --disable-fading \
		--without-jpeg --without-png
.else
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png

CONFIGURE_ARGS+= --with-xpm --enable-transparency \
		--enable-background-image --enable-fading \
		--with-jpeg --with-png
.endif

.include <bsd.port.mk>
