# $OpenBSD: Makefile,v 1.3 2004/11/11 18:15:53 naddy Exp $

COMMENT=		"PPTP Server"

VERSION=		1.1.4-b4
PKGNAME=		poptop-${VERSION:S/-b/.b/}p1
DISTNAME=		pptpd-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.poptop.org/

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=poptop/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-bsdppp --with-pppd-ip-alloc

WRKDIST=		${WRKDIR}/${PKGNAME:C/\.b.$//}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/poptop
	${INSTALL_DATA} ${WRKSRC}/samples/pptpd.conf \
		${PREFIX}/share/examples/poptop/pptpd.conf-sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/poptop/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/poptop/

.include <bsd.port.mk>
