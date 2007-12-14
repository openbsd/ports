# $OpenBSD: Makefile,v 1.1.1.1 2007/12/14 21:13:46 sthen Exp $

COMMENT=		connect to VNC server and save screen images

V=			1.2a
DISTNAME=		vncsnapshot-$V-src
PKGNAME=		vncsnapshot-$V

CATEGORIES=		net

HOMEPAGE=		http://vncsnapshot.sourceforge.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		jpeg::graphics/jpeg

WANTLIB += c m stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vncsnapshot/}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vncsnapshot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vncsnapshot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vncsnapshot

WRKDIST=		${WRKDIR}/vncsnapshot-$V

NO_REGRESS=		Yes

.include <bsd.port.mk>
