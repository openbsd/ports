# $OpenBSD: Makefile,v 1.8 1999/10/26 04:56:35 turan Exp $

BROKEN=		bad packing lists

DISTNAME=       MIME-Base64-2.11
PKGNAME=        MIME-Base64-2.11
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=     MIME

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
