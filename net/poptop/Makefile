# $OpenBSD: Makefile,v 1.1.1.1 2003/04/17 08:59:26 wilfried Exp $

COMMENT=		"PPTP Server"

VERSION=		1.1.4
PKGNAME=		poptop-${VERSION}.b3
DISTNAME=		pptpd-${VERSION}-b3
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

WRKDIST=		${WRKDIR}/poptop-${VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/poptop
	${INSTALL_DATA} ${WRKSRC}/samples/pptpd.conf ${PREFIX}/share/examples/poptop/pptpd.conf-sample

.include <bsd.port.mk>
