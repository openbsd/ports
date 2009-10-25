# $OpenBSD: Makefile,v 1.22 2009/10/25 22:25:06 jasper Exp $

COMMENT=	event-driven IRC-client module

DISTNAME=	POE-Component-IRC-6.16
CATEGORIES=	net

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
		:p5-POE-Filter-IRCD->=1.7:net/p5-POE-Filter-IRCD

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-POE-Component-IRC

.include <bsd.port.mk>
