# $OpenBSD: Makefile,v 1.1.1.1 2002/05/21 21:59:42 jsyn Exp $

COMMENT=		"simple hostname scanner"

DISTNAME=		plushs-1.0
CATEGORIES=		net
NEED_VERSION=		1.531
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=plushs/}

HOMEPAGE=		http://plushs.sourceforge.net

MAINTAINER=		Jose Jimenez Garcia <pluf@wanadoo.es>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plushs
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/plushs

.include <bsd.port.mk>
