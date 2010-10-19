# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:25 espie Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.90
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc
USE_GROFF =	Yes

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-File-Next
REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

post-build:
	@cp ${WRKBUILD}/ack-base ${WRKBUILD}/ack

.include <bsd.port.mk>
