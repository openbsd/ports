# $OpenBSD: Makefile,v 1.5 2007/03/17 21:55:54 jolan Exp $

COMMENT=	"caching DNS forwarder and DHCP server"

DISTNAME=	dnsmasq-2.38
CATEGORIES=	net

MAINTAINER=	Jonathan Weiss <jw@innerewut.de>

HOMEPAGE=	http://www.thekelleys.org.uk/dnsmasq/doc.html

# GPL
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
