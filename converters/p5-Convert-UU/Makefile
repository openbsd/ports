# OpenBSD makefile for:			p5-Convert-UU
# Version required:			0.04
# Date created:				29 April 1998
# Whom:	      				Angelos D. Keromytis
#
#   $OpenBSD: Makefile,v 1.1.1.1 1998/04/29 05:08:00 angelos Exp $
#

DISTNAME=	Convert-UU-0.04
PKGNAME=	p5-Convert-UU-0.04
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

MAINTAINER=	angelos@openbsd.org

USE_PERL5=	YES

MAN1=		puuencode.1 puudecode.1
MAN3=		Convert::UU.3
MAN3PREFIX=	${PREFIX}/lib/perl5

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
