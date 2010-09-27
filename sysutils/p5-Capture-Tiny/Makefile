# $OpenBSD: Makefile,v 1.3 2010/09/27 13:00:13 stephan Exp $

COMMENT=		capture STDOUT and STDERR

CPAN_AUTHOR=		DAGOLDEN
MODULES=		cpan

DISTNAME=		Capture-Tiny-0.08
CATEGORIES=		sysutils

# Apache 2.0
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Capture-Tiny
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Capture-Tiny

.include <bsd.port.mk>
