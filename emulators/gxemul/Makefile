# $OpenBSD: Makefile,v 1.32 2014/05/01 06:47:51 benoit Exp $

COMMENT=		ARM/M88k/MIPS/PowerPC/SuperH machines emulator

DISTNAME =		gxemul-0.6.0
CATEGORIES=		emulators
HOMEPAGE=		http://gxemul.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gxemul/}

WANTLIB =		c m stdc++

CONFIGURE_STYLE=	simple

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--disable-x
.else
WANTLIB+=		X11 pthread-stubs xcb
.endif

NO_TEST=		Yes

INSTALL_STRIP=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gxemul ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gxemul
	${INSTALL_DATA} ${WRKSRC}/doc/*.{gif,png,html} \
		${PREFIX}/share/doc/gxemul
	${INSTALL_DATA} ${WRKSRC}/man/gxemul.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
