# $OpenBSD: Makefile,v 1.6 2002/05/15 17:42:24 espie Exp $

COMMENT=	"active packet sniffer"

DISTNAME=	angst-0.4b
CATEGORIES=	net
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=angst/}

HOMEPAGE=	http://angst.sourceforge.net/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	angst

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/angst ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/angst.8 ${PREFIX}/man/man8/angst.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/angst
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/angst
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/angst

.include <bsd.port.mk>
