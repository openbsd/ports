# $OpenBSD: Makefile,v 1.6 2007/09/15 22:36:58 merdely Exp $

COMMENT=		PPTP Server

PKGNAME=		poptop-1.1.4.b4p1
DISTNAME=		pptpd-1.1.4-b4
CATEGORIES=		net

HOMEPAGE=		http://www.poptop.org/

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c util 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=poptop/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-bsdppp --with-pppd-ip-alloc

WRKDIST=		${WRKDIR}/poptop-1.1.4

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/poptop
	${INSTALL_DATA} ${WRKSRC}/samples/pptpd.conf \
		${PREFIX}/share/examples/poptop/pptpd.conf-sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/poptop/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/poptop/

.include <bsd.port.mk>
