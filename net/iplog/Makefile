# $OpenBSD: Makefile,v 1.2 2001/01/18 02:21:02 danh Exp $

DISTNAME=	iplog-2.2.3
CATEGORIES=	net security
NEED_VERSION=	1.351
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= ojnk

HOMEPAGE=	http://ojnk.sourceforge.net

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iplog
	${INSTALL_DATA} ${WRKSRC}/example-iplog.conf \
		${PREFIX}/share/examples/iplog/iplog.conf

.include <bsd.port.mk>
