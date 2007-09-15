# $OpenBSD: Makefile,v 1.4 2007/09/15 22:36:58 merdely Exp $

COMMENT=		simple hostname scanner

DISTNAME=		plushs-1.2
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=plushs/}

HOMEPAGE=		http://plushs.sourceforge.net

MAINTAINER=		Jose Jimenez Garcia <pluf@wanadoo.es>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plushs
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/plushs
	${INSTALL_DATA} ${WRKSRC}/patterns.list ${PREFIX}/share/doc/plushs

.include <bsd.port.mk>
