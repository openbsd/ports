# $OpenBSD: Makefile,v 1.3 2012/08/19 13:30:04 ajacoutot Exp $

COMMENT=	provide cryptographic tunnel

DISTNAME=	ctunnel-0.4
CATEGORIES=	security
REVISION=	0

HOMEPAGE=	http://nardcore.org/ctunnel/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB= 	c crypto pthread z

NO_REGRESS=	Yes

USE_GMAKE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ctunnel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ctunnel/

.include <bsd.port.mk>
