# $OpenBSD: Makefile,v 1.17 2007/09/15 20:59:41 merdely Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
DISTNAME=	XML-Simple-2.14
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	textproc

HOMEPAGE=	http://www.mclean.net.nz/

RUN_DEPENDS=	:p5-XML-Parser->=2:textproc/p5-XML-Parser \
		:p5-XML-SAX->=0.12:textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
