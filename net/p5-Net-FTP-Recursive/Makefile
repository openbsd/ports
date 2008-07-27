# $OpenBSD: Makefile,v 1.4 2008/07/27 10:16:05 fgsch Exp $

COMMENT=	recursive FTP client module

MODULES=	cpan
DISTNAME=	Net-FTP-Recursive-2.02
CATEGORIES=	net

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXAMPLE_DIR=${PREFIX}/share/examples/p5-Net-FTP-Recursive

WRKDIST =	${WRKDIR}/Net-FTP-Recursive

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
