# $OpenBSD: Makefile,v 1.25 2006/04/05 04:37:00 sturm Exp $

COMMENT=		'color vt102 terminal emulator with transparency support'

DISTNAME=		wterm-6.2.9
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

HOMEPAGE=		http://www.wterm.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xpm c util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wterm/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:windowmaker->=0.50.0:x11/windowmaker

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
	${INSTALL_MAN} ${WRKSRC}/doc/wterm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wterm/
	${INSTALL_DATA} ${WRKSRC}/doc/menu/* ${PREFIX}/share/examples/wterm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wterm
	${INSTALL_DATA} ${WRKSRC}/doc/wtermRef.txt ${PREFIX}/share/doc/wterm/

.include <bsd.port.mk>
