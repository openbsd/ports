# OpenBSD makefile for:			p5-Mail-POP3Client
# Version required:			1.15
# Date created:				May 16 1998
# Whom:	      				Angelos D. Keromytis
#
#   $OpenBSD: Makefile,v 1.2 1999/10/26 04:56:37 turan Exp $
#

BROKEN=		bad packing lists

DISTNAME=	POP3Client-1_15
PKGNAME=	p5-Mail-POP3Client-1.15
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

MAINTAINER=	angelos@openbsd.org

USE_PERL5=	YES

MAN3=		Mail::POP3Client.3

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
