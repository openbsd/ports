# OpenBSD makefile for:			p5-Mail-POP3Client
# Version required:			1.15
# Date created:				May 16 1998
# Whom:	      				Angelos D. Keromytis
#
#   $OpenBSD: Makefile,v 1.4 2000/03/17 19:28:51 turan Exp $
#

DISTNAME=	POP3Client-2.3
PKGNAME=	p5-Mail-POP3Client-2.3
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_PERL5=	YES

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
