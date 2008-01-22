# $OpenBSD: Makefile,v 1.2 2008/01/22 09:19:09 landry Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.76
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		::devel/p5-File-Next
RUN_DEPENDS=		${BUILD_DEPENDS}

.include <bsd.port.mk>
