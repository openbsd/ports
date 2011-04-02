# $OpenBSD: Makefile,v 1.2 2011/04/02 14:31:42 sthen Exp $

COMMENT =	perl sieveshell-compatible ManageSieve client

DISTNAME =	sieve-connect-0.81
CATEGORIES =	mail
PKG_ARCH = 	*

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

HOMEPAGE = 	http://people.spodhuis.org/phil.pennock/software/
MASTER_SITES =	${HOMEPAGE}

EXTRACT_SUFX =	.tar.bz2

# BSD
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM = Yes 
PERMIT_DISTFILES_FTP =	Yes 

NO_REGRESS =	Yes
RUN_DEPENDS =	net/p5-Net-DNS \
		net/p5-IO-Socket-INET6 \
		security/p5-IO-Socket-SSL \
		security/p5-Authen-SASL \
		devel/p5-Term-ReadKey

do-configure:
		@perl -pi -e 's,^PREFIX=.*,,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
