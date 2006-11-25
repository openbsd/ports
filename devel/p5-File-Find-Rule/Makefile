# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:35 espie Exp $

COMMENT=	"alternative interface to File::Find"

MODULES=	cpan
DISTNAME=	File-Find-Rule-0.28
CATEGORIES=	devel

# perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-Number-Compare-*:devel/p5-Number-Compare \
		:p5-Text-Glob-*:textproc/p5-Text-Glob
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
