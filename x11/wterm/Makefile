# $OpenBSD: Makefile,v 1.33 2013/03/11 11:46:17 espie Exp $

COMMENT=		color vt102 terminal emulator with transparency support

DISTNAME=		wterm-6.2.9
REVISION=		2
CATEGORIES=		x11

HOMEPAGE=		http://www.wterm.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xpm c util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wterm/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/windowmaker>=0.50.0

USE_GROFF =		Yes
NO_TEST=		Yes
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
