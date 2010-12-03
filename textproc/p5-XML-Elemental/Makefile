# $OpenBSD: Makefile,v 1.7 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	generic classes for simplistic handling of XML data

MODULES=	cpan
DISTNAME=	XML-Elemental-2.0
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX

.include <bsd.port.mk>
