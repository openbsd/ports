# $OpenBSD: Makefile,v 1.5 2008/10/03 13:38:29 jasper Exp $

COMMENT=	alternative interface to File::Find

MODULES=	cpan
DISTNAME=	File-Find-Rule-0.30
CATEGORIES=	devel

# perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-Number-Compare-*:devel/p5-Number-Compare \
		:p5-Text-Glob-*:textproc/p5-Text-Glob
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
