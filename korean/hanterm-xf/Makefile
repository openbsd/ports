# $OpenBSD: Makefile,v 1.11 2006/10/09 09:32:26 espie Exp $

COMMENT=	"X Hangul Terminal (XFree86 xterm Based)"

DISTNAME=	hanterm-xf-2.0.6-177
CATEGORIES=	korean
PKGNAME=	${DISTNAME}p0

MASTER_SITES=	http://kldp.net/frs/download.php/3281/
HOMEPAGE=	http://hanterm-xf.kldp.net

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MAINTAINER=	Jung <moorang@gmail.com>

WANTLIB=	c Xmu Xt SM X11 Xaw Xext util termcap ICE

MODULES=	converters/libiconv
USE_X11=	Yes
NO_REGRESS=	Yes 

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

CONFIGURE_ARGS=	--enable-box-char \
		--enable-ansi-color \
		--enable-256-color \
		--enable-tcap-query

.include <bsd.port.mk>
