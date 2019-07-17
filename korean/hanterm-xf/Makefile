# $OpenBSD: Makefile,v 1.28 2019/07/17 14:46:32 danj Exp $

COMMENT=	X Hangul Terminal (XFree86 xterm Based)

V=		2.0.6-177
DISTNAME=	hanterm-xf-$V
CATEGORIES=	korean
PKGNAME=	hanterm-xf-${V:S/-/./}
REVISION=	6
EPOCH=		0

MASTER_SITES=	http://kldp.net/frs/download.php/3281/
HOMEPAGE=	http://hanterm-xf.kldp.net

PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xaw Xext Xmu Xt c curses iconv util

LIB_DEPENDS=	converters/libiconv
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

post-build:
	iconv -f EUC-KR -t UTF-8 ${WRKSRC}/hanterm.man > ${WRKBUILD}/hanterm.1

post-install:
	${INSTALL_MAN} ${WRKBUILD}/hanterm.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
