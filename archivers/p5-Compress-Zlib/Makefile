# $OpenBSD: Makefile,v 1.9 2000/03/25 05:10:47 brad Exp $

DISTNAME=	Compress-Zlib-1.01
PKGNAME=	p5-Cmprs-Zlib-1.01
CATEGORIES=	archivers perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Compress

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

PLIST=	${WRKDIR}/PLIST

do-configure:
	@cd ${WRKSRC}; env ${MAKE_ENV} /usr/bin/perl Makefile.PL

pre-install:
	@sed -e s/@ARCH@/${MACHINE_ARCH}/ ${FILESDIR}/PLIST.template > \
		${WRKDIR}/PLIST

.include <bsd.port.mk>
