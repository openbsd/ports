# $OpenBSD: Makefile,v 1.18 2007/09/29 18:08:57 simon Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
DISTNAME=	XML-Simple-2.18
CATEGORIES=	textproc

RUN_DEPENDS=	:p5-XML-Parser->=2:textproc/p5-XML-Parser \
		:p5-XML-SAX->=0.16:textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
