# $OpenBSD: Makefile,v 1.8 2008/11/21 15:05:23 jasper Exp $

COMMENT=		PPTP Server

PKGNAME=		poptop-1.3.0p0
DISTNAME=		pptpd-1.3.0
CATEGORIES=		net

HOMEPAGE=		http://www.poptop.org/

MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c util 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=poptop/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-bsdppp --with-pppd-ip-alloc
USE_GMAKE=      yes

post-patch:
	@perl -pi -e 's,/usr,${PREFIX},g' ${WRKSRC}/pptpctrl.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/poptop
	${INSTALL_DATA} ${WRKSRC}/samples/pptpd.conf \
		${PREFIX}/share/examples/poptop/pptpd.conf-sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/poptop/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/poptop/

.include <bsd.port.mk>
