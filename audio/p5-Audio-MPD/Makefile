# $OpenBSD: Makefile,v 1.3 2006/11/29 20:10:42 jasper Exp $

COMMENT=		"module for communicating with MPD servers"
DISTNAME=		Audio-MPD-0.12.3
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		NJH

CONFIGURE_STYLE=	modbuild

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Audio-MPD
		${INSTALL_SCRIPT} ${WRKSRC}/scripts/* \
			${PREFIX}/share/examples/p5-Audio-MPD

.include <bsd.port.mk>
