# $OpenBSD: Makefile,v 1.1.1.1 2000/09/06 07:52:45 brad Exp $

ONLY_FOR_ARCHS=	i386 m68k sparc

DISTNAME=	mod_perl-1.24
CATEGORIES=	www perl5
NEED_VERSION=	1.324
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

HOMEPAGE=	http://perl.apache.org/

MAINTAINER=	pvk@openbsd.ru

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

INSTALL_TARGET=	pure_install doc_install

do-configure:
	@arch=`/usr/bin/perl -e 'use Config; print $$Config{archname}, "\n";'`; \
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	/usr/bin/perl Makefile.PL \
	USE_APXS=1 EVERYTHING=1 WITH_APXS=/usr/sbin/apxs \
	PREFIX='$${DESTDIR}${PREFIX}' \
	INSTALLSITELIB='$${DESTDIR}${PREFIX}/libdata/perl5/site_perl' \
	INSTALLSITEARCH="\$${INSTALLSITELIB}/$$arch" \
	INSTALLPRIVLIB='$${DESTDIR}/usr/libdata/perl5' \
	INSTALLARCHLIB="\$${INSTALLPRIVLIB}/$$arch" \
	INSTALLMAN1DIR='$${DESTDIR}${PREFIX}/man/man1' \
	INSTALLMAN3DIR='$${DESTDIR}${PREFIX}/man/man3' \
	INSTALLBIN='$${PREFIX}/bin' \
	INSTALLSCRIPT='$${INSTALLBIN}'

post-build:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
	< ${FILESDIR}/mod_perl-enable > ${WRKDIR}/mod_perl-enable

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_perl
	${INSTALL_DATA} ${WRKBUILD}/apaci/libperl.so ${PREFIX}/lib/mod_perl.so
	${INSTALL_DATA} ${WRKSRC}/htdocs/manual/mod/* \
		${PREFIX}/share/doc/mod_perl
	${INSTALL_SCRIPT} ${WRKDIR}/mod_perl-enable ${PREFIX}/sbin

.include <bsd.port.mk>
