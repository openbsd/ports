# $OpenBSD: Makefile,v 1.20 2001/11/14 13:58:34 wilfried Exp $

COMMENT=		'color vt102 terminal emulator with transparency support'

DISTNAME=		wterm-6.2.6
CATEGORIES=		x11
NEED_VERSION=		1.482

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.kddlabs.co.jp/X11/acontrib/wterm/ \
			ftp://ftp.riken.go.jp/pub/X11/acontrib/wterm/

BUILD_DEPENDS=		:windowmaker->=0.50.0:x11/windowmaker
RUN_DEPENDS=		${BUILD_DEPENDS}

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-utmp --enable-wtmp \
			--with-xpm --enable-xpm-background --enable-transparency \
			--enable-xgetdefault --enable-ttygid
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/wterm ${PREFIX}/bin

.include <bsd.port.mk>
