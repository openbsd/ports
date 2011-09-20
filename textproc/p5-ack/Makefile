# $OpenBSD: Makefile,v 1.11 2011/09/20 08:09:11 landry Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.96
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next

.include <bsd.port.mk>
