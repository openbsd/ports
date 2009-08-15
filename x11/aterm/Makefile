# $OpenBSD: Makefile,v 1.42 2009/08/15 16:40:27 ajacoutot Exp $

DISTNAME=	aterm-0.4.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xpm c util

COMMENT=	color vt102 terminal emulator with transparency support
HOMEPAGE=	http://aterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aterm/}

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-xgetdefault --enable-ttygid --enable-utmp \
		--with-xpm --enable-transparency \
		--enable-background-image --enable-fading
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" LIBS="-lutil"

FLAVORS=	big5
FLAVOR?=

.if ${FLAVOR:L:Mbig5}
RUN_DEPENDS=	::chinese/taipeifonts
PATCH_LIST=	patch-* big5-patch-src_Makefile_in

CONFIGURE_ARGS+= --enable-big5

post-patch:
	@cd ${FILESDIR}; cp -f {cli_xcin.c,protocol.h,state.h} \
		${WRKSRC}/src
.endif

NO_REGRESS=	Yes

post-install:
	chgrp utmp ${PREFIX}/bin/aterm
	chmod 2755 ${PREFIX}/bin/aterm

.include <bsd.port.mk>
