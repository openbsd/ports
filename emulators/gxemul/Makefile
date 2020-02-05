# $OpenBSD: Makefile,v 1.46 2020/02/05 20:48:08 fcambus Exp $

COMMENT=		ARM/M88k/MIPS/PowerPC/SuperH machines emulator

DISTNAME =		gxemul-0.6.2
CATEGORIES=		emulators
REVISION =		0

HOMEPAGE=		http://gavare.se/gxemul/

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gxemul/}

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	simple

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--disable-x
.else
WANTLIB+=		X11
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
