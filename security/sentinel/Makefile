# $OpenBSD: Makefile,v 1.12 2003/02/03 06:38:22 pvalchev Exp $

COMMENT=		"remote promiscous mode detection tool"

DISTNAME=		sentinel-1.0
CATEGORIES=    		security net

HOMEPAGE=		http://www.packetfactory.net/projects/sentinel/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=		http://www.packetfactory.net/projects/sentinel/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/IDS/sentinel/}

LIB_DEPENDS=		net::net/libnet

WRKDIST=		${WRKDIR}/sentinel

ALL_TARGET=		sentinel
MAKE_FLAGS=		CC="${CC}" CFLAGS='${CFLAGS} -Wall -I. \
			 -I${LOCALBASE}/include `libnet-config --defines`'

NO_REGRESS=		Yes


do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sentinel ${PREFIX}/bin/sentinel
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sentinel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sentinel

.include <bsd.port.mk>
