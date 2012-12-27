# $OpenBSD: Makefile,v 1.30 2012/12/27 20:28:48 jasper Exp $

COMMENT=		ARM/M88k/MIPS/PowerPC/SuperH machines emulator

DISTNAME=		gxemul-0.4.7.1
REVISION=		1
CATEGORIES=		emulators
HOMEPAGE=		http://gxemul.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/src/

WANTLIB=		c m

CONFIGURE_STYLE=	simple
USE_GROFF =		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
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
