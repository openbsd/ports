# $OpenBSD: Makefile,v 1.1.1.1 2001/06/16 14:56:26 lebel Exp $

COMMENT=		"passive network mapping tool"

DISTNAME=		siphon-v.666
PKGNAME=		siphon-0.666
CATEGORIES=    		security net
NEED_VERSION=		1.414

HOMEPAGE=		http://www.gravitino.net/projects/siphon/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.gravitino.net/projects/siphon/ \
			http://packetstorm.securify.com/UNIX/utilities/siphon/

MAKE_ENV=		SYSCONFDIR="${SYSCONFDIR}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/siphon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/siphon
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siphon
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/siphon
	${INSTALL_DATA} ${WRKSRC}/osprints.conf ${PREFIX}/share/examples/siphon

.include <bsd.port.mk>
