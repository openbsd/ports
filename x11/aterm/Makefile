# $OpenBSD: Makefile,v 1.40 2006/11/20 20:49:34 bernd Exp $

DISTNAME=	aterm-0.4.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c util

COMMENT=	"color vt102 terminal emulator with transparency support"
HOMEPAGE=	http://aterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aterm/}

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-xgetdefault --enable-ttygid --enable-utmp
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" LIBS="-lutil"

FLAVORS=	big5 lite
FLAVOR?=

PATCH_LIST+=	patch-src_command_c

.if ${FLAVOR:L:Mbig5}
RUN_DEPENDS=	::chinese/taipeifonts
PATCH_LIST+=	patch-src_Makefile_in

CONFIGURE_ARGS+= --enable-big5

post-patch:
	@cd ${FILESDIR}; cp -f {cli_xcin.c,protocol.h,state.h} \
		${WRKSRC}/src
.endif

.if ${FLAVOR:L:Mlite}
CONFIGURE_ARGS+= --without-xpm --disable-transparency \
		--disable-background-image --disable-fading \
		--without-jpeg --without-png
.else
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png

CONFIGURE_ARGS+= --with-xpm --enable-transparency \
		--enable-background-image --enable-fading \
		--with-jpeg --with-png
WANTLIB+=	Xpm 
.endif

NO_REGRESS=	Yes

post-install:
	chgrp utmp ${PREFIX}/bin/aterm
	chmod 2755 ${PREFIX}/bin/aterm

.include <bsd.port.mk>
