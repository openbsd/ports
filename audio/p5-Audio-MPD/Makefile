# $OpenBSD: Makefile,v 1.7 2007/03/17 22:51:26 jasper Exp $

COMMENT=		"module for communicating with MPD servers"
DISTNAME=		Audio-MPD-0.15.0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		JQUELIN

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Class-Accessor
REGRESS_DEPENDS=	::devel/p5-Readonly

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Audio-MPD
		${INSTALL_SCRIPT} ${WRKSRC}/scripts/* \
			${PREFIX}/share/examples/p5-Audio-MPD

.include <bsd.port.mk>
