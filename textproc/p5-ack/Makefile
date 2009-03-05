# $OpenBSD: Makefile,v 1.3 2009/03/05 19:26:45 millert Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.88
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		::devel/p5-File-Next
RUN_DEPENDS=		${BUILD_DEPENDS}

post-build:
	@cp ${WRKBUILD}/ack-base ${WRKBUILD}/ack

.include <bsd.port.mk>
