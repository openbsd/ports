# $OpenBSD: Makefile,v 1.3 2000/04/08 14:28:48 espie Exp $

DISTNAME=       MPEG-MP3Info-0.71
PKGNAME=        MPEG-MP3Info-0.71
CATEGORIES=	audio perl5
NEED_VERSION=	1.251

MAINTAINER=	angelos@openbsd.org
MASTER_SITES=	http://www.perl.com/CPAN-local/authors/id/CNANDOR/

LICENSE_TYPE=	ARTISTIC
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
