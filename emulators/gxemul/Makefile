# $OpenBSD: Makefile,v 1.27 2010/10/24 21:17:48 ajacoutot Exp $

COMMENT=		ARM/M88k/MIPS/PowerPC/SuperH machines emulator

DISTNAME=		gxemul-0.4.7.1
REVISION=		0
CATEGORIES=		emulators
HOMEPAGE=		http://gavare.se/gxemul/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/src/

WANTLIB=		c m

CONFIGURE_STYLE=	simple
USE_GROFF =	Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS=		--disable-x
.else
WANTLIB+=		X11 pthread-stubs xcb
.endif

NO_REGRESS=		Yes

INSTALL_STRIP=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gxemul ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gxemul
	${INSTALL_DATA} ${WRKSRC}/doc/*.{gif,png,html} \
		${PREFIX}/share/doc/gxemul
	${INSTALL_DATA} ${WRKSRC}/man/gxemul.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
