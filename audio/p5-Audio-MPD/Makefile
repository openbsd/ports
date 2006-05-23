# $OpenBSD: Makefile,v 1.1.1.1 2006/05/23 15:27:34 bernd Exp $

COMMENT=		"module for communicating with MPD servers"
DISTNAME=		Audio-MPD-0.12.3
PKGNMAE=		p5-${DISTNAME}
CATEGORIES=		audio perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/N/NJ/NJH/}

CONFIGURE_STYLE=	perl modbuild

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Audio-MPD
		${INSTALL_SCRIPT} ${WRKSRC}/scripts/* \
			${PREFIX}/share/examples/p5-Audio-MPD

.include <bsd.port.mk>
