# $OpenBSD: Makefile,v 1.8 2006/11/03 23:54:55 jasper Exp $

COMMENT=	"event-driven IRC-client module"

DISTNAME=	POE-Component-IRC-5.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	::devel/p5-POE \
		:p5-POE-Component-Client-DNS->=0.99:net/p5-POE-Component-Client-DNS \
		:p5-POE-Filter-IRCD->=1.7:net/p5-POE-Filter-IRCD
RUN_DEPENDS=	${BUILD_DEPENDS}

PKG_ARCH=	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-POE-Component-IRC

.include <bsd.port.mk>
