# $OpenBSD: Makefile,v 1.22 2019/07/12 20:51:10 sthen Exp $

COMMENT=		minimalist window manager for the X Window System

DISTNAME=		evilwm-1.1.1
REVISION=		0
CATEGORIES=		x11

HOMEPAGE=		https://www.6809.org.uk/evilwm/

# 9wm license
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xrandr c

MASTER_SITES=		${HOMEPAGE}

MAKE_FLAGS=		CPPFLAGS="-I${X11BASE}/include" \
			CC="${CC}" \
			LDFLAGS="-L${X11BASE}/lib"

NO_TEST=		Yes

DOCDIR=			${PREFIX}/share/doc/evilwm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/evilwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/evilwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}

.include <bsd.port.mk>
