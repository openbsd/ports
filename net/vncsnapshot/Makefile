# $OpenBSD: Makefile,v 1.14 2019/07/12 20:48:51 sthen Exp $

COMMENT=		connect to VNC server and save screen images

V=			1.2a
PORTROACH=		ignore:1
DISTNAME=		vncsnapshot-$V-src
PKGNAME=		vncsnapshot-$V
REVISION =		3

CATEGORIES=		net

HOMEPAGE=		http://vncsnapshot.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		graphics/jpeg

WANTLIB += c m ${COMPILER_LIBCXX} z jpeg

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vncsnapshot/}

MAKE_FLAGS=		CC="${CC}" CXX="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vncsnapshot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vncsnapshot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vncsnapshot

WRKDIST=		${WRKDIR}/vncsnapshot-$V

NO_TEST=		Yes

.include <bsd.port.mk>
