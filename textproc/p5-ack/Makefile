# $OpenBSD: Makefile,v 1.10 2011/05/22 10:34:38 rpointel Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.94
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next

.include <bsd.port.mk>
