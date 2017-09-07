# $OpenBSD: Makefile,v 1.10 2017/09/07 16:52:55 giovanni Exp $

COMMENT= 	fast lookup of country codes by IP address

MODULES=	cpan
PKG_ARCH=	*
D=		20170907
DISTNAME=	IP-Country-2.28
PKGNAME=	p5-${DISTNAME}.$D
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		IP-Country-data-$D.tar.bz2:0

CATEGORIES=	net

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES0 =		https://paclan.it/distfiles/

RUN_DEPENDS =		geo/p5-Geography-Countries

post-patch:
	${SUBST_CMD} ${WRKSRC}/dbmScripts/ipcc_maker.pl
	cp ${WRKDIR}/data/*.gif ${WRKSRC}/lib/IP/Country/Fast/

# maintainer convenience target
updatedb:
	cd ${WRKSRC}/dbmScripts && sh whois_filenames \
		&& perl ipcc_loader.pl && perl ipcc_maker.pl 

.include <bsd.port.mk>
