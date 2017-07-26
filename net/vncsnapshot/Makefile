# $OpenBSD: Makefile,v 1.12 2017/07/26 22:45:28 sthen Exp $

COMMENT=		connect to VNC server and save screen images

V=			1.2a
PORTROACH=		ignore:1
DISTNAME=		vncsnapshot-$V-src
PKGNAME=		vncsnapshot-$V
REVISION =		2

CATEGORIES=		net

HOMEPAGE=		http://vncsnapshot.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		graphics/jpeg

WANTLIB += c m ${COMPILER_LIBCXX} z jpeg

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vncsnapshot/}

MAKE_FLAGS=		CC="${CC}" CXX="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vncsnapshot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vncsnapshot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vncsnapshot

WRKDIST=		${WRKDIR}/vncsnapshot-$V

NO_TEST=		Yes

.include <bsd.port.mk>
