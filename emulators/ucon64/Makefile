# $OpenBSD: Makefile,v 1.6 2019/08/10 08:18:39 fcambus Exp $

COMMENT =	swiss army knife for video game console emulators

DISTNAME =	ucon64-2.2.0-src
PKGNAME =	${DISTNAME:S/-src//}

CATEGORIES =	emulators

HOMEPAGE =	http://ucon64.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ucon64/}

WRKSRC =	${WRKDIST}/src

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-dload

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS += --disable-parallel
.endif

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ucon64 ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libdiscmage/libdiscmage.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucon64
	${INSTALL_DATA} ${WRKDIST}/faq.html ${PREFIX}/share/doc/ucon64

.include <bsd.port.mk>
