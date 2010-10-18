# $OpenBSD: Makefile,v 1.25 2010/10/18 18:36:55 espie Exp $

COMMENT=	event-driven IRC-client module

DISTNAME=	POE-Component-IRC-6.16
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-POE \
		:p5-POE-Component-Pluggable->=1.24:devel/p5-POE-Component-Pluggable \
		:p5-POE-Component-Client-DNS->=0.99:net/p5-POE-Component-Client-DNS \
		:p5-POE-Filter-IRCD->=1.7:net/p5-POE-Filter-IRCD \
		::security/p5-POE-Component-SSLify

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-POE-Component-IRC

.include <bsd.port.mk>
