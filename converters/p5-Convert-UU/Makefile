# $OpenBSD: Makefile,v 1.10 2000/03/14 04:21:59 turan Exp $

DISTNAME=	Convert-UU-0.40
PKGNAME=	Convert-UU-0.40
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
		/usr/bin/perl Makefile.PL PREFIX=${PREFIX} 

.include <bsd.port.mk>
