# $OpenBSD: Makefile,v 1.5 2010/07/03 02:44:14 naddy Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.90
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

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
