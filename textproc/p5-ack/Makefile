# $OpenBSD: Makefile,v 1.4 2009/09/08 11:51:13 landry Exp $

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

BUILD_DEPENDS=		::devel/p5-File-Next
RUN_DEPENDS=		${BUILD_DEPENDS}
REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

post-build:
	@cp ${WRKBUILD}/ack-base ${WRKBUILD}/ack

.include <bsd.port.mk>
