# $OpenBSD: Makefile,v 1.15 2015/02/16 22:57:14 naddy Exp $

COMMENT=		Joe's Window Manager

DISTNAME=		jwm-2.1.0

CATEGORIES=		x11

HOMEPAGE=		http://www.joewing.net/programs/jwm/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xft Xinerama Xmu Xpm Xrender c fribidi \
			jpeg m png z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=jwm/} \
			${HOMEPAGE}/releases/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		devel/fribidi>=0.19.2 \
			graphics/png \
			graphics/jpeg

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/jwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jwm
	${INSTALL_DATA} ${WRKSRC}/example.jwmrc \
		${PREFIX}/share/examples/jwm/system.jwmrc

.include <bsd.port.mk>
