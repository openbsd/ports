# $OpenBSD: Makefile,v 1.7 2007/09/15 22:36:53 merdely Exp $

COMMENT=	caching DNS forwarder and DHCP server

DISTNAME=	dnsmasq-2.39
CATEGORIES=	net

MAINTAINER=	Jonathan Weiss <jw@innerewut.de>

HOMEPAGE=	http://www.thekelleys.org.uk/dnsmasq/doc.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.thekelleys.org.uk/dnsmasq/

NO_REGRESS=	Yes
USE_GMAKE=	Yes

pre-build:
	@perl -pi -e "s,!!SYSCONFDIR!!,${SYSCONFDIR},g" \
		${WRKSRC}/man/dnsmasq.8 ${WRKSRC}/src/config.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/dnsmasq ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/dnsmasq.conf.example ${PREFIX}/share/examples
	${INSTALL_MAN} ${WRKSRC}/man/dnsmasq.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
