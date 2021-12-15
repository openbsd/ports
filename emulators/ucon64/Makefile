# $OpenBSD: Makefile,v 1.11 2021/12/15 19:38:35 sdk Exp $

COMMENT =	swiss army knife for video game console emulators

DISTNAME =	ucon64-2.2.2-src
PKGNAME =	${DISTNAME:S/-src//}

CATEGORIES =	emulators

HOMEPAGE =	https://ucon64.sourceforge.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ucon64/}

WRKSRC =	${WRKDIST}/src

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-dload --with-libdiscmage

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS += --disable-parallel
.endif

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	@sed -i 's,-O3,,' ${WRKSRC}/Makefile \
		${WRKSRC}/libdiscmage/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ucon64 ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libdiscmage/libdiscmage.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucon64
	${INSTALL_DATA} ${WRKDIST}/faq.html ${PREFIX}/share/doc/ucon64

.include <bsd.port.mk>
