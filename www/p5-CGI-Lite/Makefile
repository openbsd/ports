# $OpenBSD: Makefile,v 1.1.1.1 2009/05/30 23:44:02 jasper Exp $

COMMENT=	process and decode WWW forms and cookies	

DISTNAME=	CGI-Lite-2.02
CATEGORIES=	www

MAINTAINER=	Abel Camarillo <acamari@the00z.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

EG_DIR= 	${PREFIX}/share/examples/p5-CGI-Lite

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EG_DIR}

.include <bsd.port.mk>
