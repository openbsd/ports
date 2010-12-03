# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
DISTNAME=		MooseX-Types-Common-0.001002
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types
REGRESS_DEPENDS=	devel/p5-Test-Exception \
			sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
