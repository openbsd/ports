# $OpenBSD: Makefile,v 1.16 2001/02/16 07:38:56 wilfried Exp $

DISTNAME=	wterm-6.2.6
CATEGORIES=	x11
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.kddlabs.co.jp/X11/acontrib/wterm/ \
		ftp://ftp.riken.go.jp/pub/X11/acontrib/wterm/

BUILD_DEPENDS=	wmaker::x11/windowmaker
RUN_DEPENDS=	wmaker::x11/windowmaker

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault --enable-ttygid
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/wterm ${PREFIX}/bin

.include <bsd.port.mk>
