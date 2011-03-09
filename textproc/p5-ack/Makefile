# $OpenBSD: Makefile,v 1.9 2011/03/09 06:23:35 ajacoutot Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.90
REVISION=		0
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc
USE_GROFF =		Yes

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next
REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

post-build:
	@cp ${WRKBUILD}/ack-base ${WRKBUILD}/ack

.include <bsd.port.mk>
