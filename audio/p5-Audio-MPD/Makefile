# $OpenBSD: Makefile,v 1.12 2009/01/08 12:21:36 jasper Exp $

COMMENT=		module for communicating with MPD servers
DISTNAME=		Audio-MPD-0.19.5
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		JQUELIN

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::audio/p5-Audio-MPD-Common \
			::devel/p5-Class-Accessor \
			::devel/p5-Getopt-Euclid \
			::devel/p5-Proc-Daemon
REGRESS_DEPENDS=	::devel/p5-Readonly

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Audio-MPD
		${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
			${PREFIX}/share/examples/p5-Audio-MPD

.include <bsd.port.mk>
