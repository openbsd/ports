# $OpenBSD: Makefile,v 1.10 2000/04/08 14:17:06 espie Exp $

DISTNAME=	Compress-Zlib-1.01
PKGNAME=	p5-Cmprs-Zlib-1.01
CATEGORIES=	archivers perl5
NEED_VERSION=	1.251
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Compress

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
FAKE=			Yes

pre-fake:
	@mkdir -p ${WRKINST}`/usr/bin/perl -e 'use Config; print $$Config{installarchlib}, "\n";'`

do-configure:
	@arch=`/usr/bin/perl -e 'use Config; print $$Config{archname}, "\n";'`; \
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	/usr/bin/perl Makefile.PL \
	    PREFIX='$${DESTDIR}${PREFIX}' \
	    INSTALLSITELIB='$${DESTDIR}${PREFIX}/libdata/perl5/site_perl' \
	    INSTALLSITEARCH="\$${INSTALLSITELIB}/$$arch" \
	    INSTALLPRIVLIB='$${DESTDIR}/usr/libdata/perl5' \
	    INSTALLARCHLIB="\$${INSTALLPRIVLIB}/$$arch" \
	    INSTALLMAN1DIR='$${DESTDIR}${PREFIX}/man/man1' \
	    INSTALLMAN3DIR='$${DESTDIR}${PREFIX}/man/man3' \
	    INSTALLBIN='$${PREFIX}/bin' \
	    INSTALLSCRIPT='$${INSTALLBIN}'

.include <bsd.port.mk>
