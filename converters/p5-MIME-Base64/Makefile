# OpenBSD makefile for:		        p5-MIME-Base64
# Version required:                     2.03
# Date created:                         29 April 1998
# Whom:                                 Angelos D. Keromytis
#
#   $OpenBSD: Makefile,v 1.1.1.1 1998/04/29 05:09:03 angelos Exp $
#

DISTNAME=       MIME-Base64-2.03
PKGNAME=        p5-MIME-Base64-2.03
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=     MIME

USE_PERL5=	YES

MAN3=           MIME::Base64.3 MIME::QuotedPrint.3
MAN3PREFIX=	${PREFIX}/lib/perl5

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
