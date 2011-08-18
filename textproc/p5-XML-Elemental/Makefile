# $OpenBSD: Makefile,v 1.8 2011/08/18 15:32:29 gsoares Exp $

COMMENT=	generic classes for simplistic handling of XML data

MODULES=	cpan
DISTNAME=	XML-Elemental-2.11
CATEGORIES=	textproc

MAINTAINER=	Wen Heping <wenheping@gmail.com>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX \
		devel/p5-Task-Weaken>=1.02

.include <bsd.port.mk>
