# $OpenBSD: Makefile,v 1.14 2008/11/11 01:52:21 kevlo Exp $

COMMENT=	subversion repository mirroring tool

DISTNAME=	SVN-Mirror-0.75
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
RUN_DEPENDS=	:p5-SVN-Simple->=0.27:devel/p5-SVN-Simple \
		:p5-Class-Accessor->=0.19:devel/p5-Class-Accessor \
		:p5-Data-UUID->=0.11:devel/p5-Data-UUID \
		:p5-File-chdir->=0.06:devel/p5-File-chdir \
		:p5-Time-TimeDate->=1.16:devel/p5-Time-TimeDate \
		:p5-Term-ReadKey->=2.21:devel/p5-Term-ReadKey \
		:p5-VCP-autrijus->=0.9:devel/p5-VCP-autrijus \
		:p5-Sort-Versions->=1.5:textproc/p5-Sort-Versions \
		:p5-URI->=1.30:www/p5-URI 
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
