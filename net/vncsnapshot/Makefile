# $OpenBSD: Makefile,v 1.6 2015/03/18 15:07:58 sthen Exp $

COMMENT=		connect to VNC server and save screen images

V=			1.2a
PORTROACH=		ignore:1
DISTNAME=		vncsnapshot-$V-src
PKGNAME=		vncsnapshot-$V

CATEGORIES=		net

HOMEPAGE=		http://vncsnapshot.sourceforge.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		graphics/jpeg

WANTLIB += c m stdc++ z jpeg

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vncsnapshot/}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vncsnapshot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vncsnapshot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vncsnapshot

WRKDIST=		${WRKDIR}/vncsnapshot-$V

NO_TEST=		Yes

.include <bsd.port.mk>
