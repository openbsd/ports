#   $OpenBSD: Makefile,v 1.3 1998/10/18 05:02:01 marc Exp $
#

DISTNAME=       MIME-Base64-2.03
PKGNAME=        p5-MIME-Base64-2.03
CATEGORIES=	converters perl5

#BROKEN=	"newer version available"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=     MIME

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
