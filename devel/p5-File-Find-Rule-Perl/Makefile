# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.10
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule>=0.20
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
