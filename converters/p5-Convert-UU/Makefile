# $OpenBSD: Makefile,v 1.13 2000/04/08 14:11:09 espie Exp $

DISTNAME=	Convert-UU-0.40
PKGNAME=	Convert-UU-0.40
CATEGORIES=	converters perl5
NEED_VERSION=	1.251

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert
FAKE=			Yes

pre-fake:
	@mkdir -p ${WRKINST}/usr/libdata/perl5/i386-openbsd
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
