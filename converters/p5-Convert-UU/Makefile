#   $OpenBSD: Makefile,v 1.4 1998/10/18 05:02:00 marc Exp $
#

DISTNAME=	Convert-UU-0.04
PKGNAME=	p5-Convert-UU-0.04
CATEGORIES=	converters perl5

#BROKEN=	"newer version available"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
