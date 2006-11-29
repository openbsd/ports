# $OpenBSD: Makefile,v 1.3 2006/11/29 08:23:30 espie Exp $

COMMENT=	"create and manipulate PAR distributions"

MODULES=	cpan
DISTNAME=	PAR-Dist-0.21
CATEGORIES=	devel archivers

MAINTAINER=	Simon Dassow <janus@errornet.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	PERL_TEST_POD=Yes TEST_POD=Yes

.include <bsd.port.mk>
