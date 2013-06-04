# $OpenBSD: Makefile,v 1.23 2013/06/04 13:16:20 sthen Exp $

COMMENT=	X Hangul Terminal (XFree86 xterm Based)

V=		2.0.6-177
DISTNAME=	hanterm-xf-$V
CATEGORIES=	korean
PKGNAME=	hanterm-xf-${V:S/-/./}
REVISION=	3
EPOCH=		0

MASTER_SITES=	http://kldp.net/frs/download.php/3281/
HOMEPAGE=	http://hanterm-xf.kldp.net

PERMIT_PACKAGE_CDROM=	yes

MAINTAINER=	Jung Lee <moorang@gmail.com>

WANTLIB=	ICE SM X11 Xaw Xext Xmu Xt c termcap util

MODULES=	converters/libiconv
USE_GROFF =	Yes
NO_TEST=	Yes 

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"
# Force check for openpty(3) in libutil
CONFIGURE_ENV+=	ac_cv_func_grantpt=no

CONFIGURE_ARGS=	--enable-box-char \
		--enable-ansi-color \
		--enable-256-color \
		--enable-tcap-query

.include <bsd.port.mk>
