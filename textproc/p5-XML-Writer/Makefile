# $OpenBSD: Makefile,v 1.18 2010/09/09 19:24:50 jasper Exp $

COMMENT=	perl extension for writing XML documents

DISTNAME=	XML-Writer-0.612
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-XML-Writer
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-XML-Writer

.include <bsd.port.mk>
