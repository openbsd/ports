# $OpenBSD: Makefile,v 1.10 2002/03/17 04:55:03 brad Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

COMMENT=	"module that embeds a Perl interpreter into Apache"

DISTNAME=	mod_perl-1.26
CATEGORIES=	www perl5
NEED_VERSION=	1.500
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

HOMEPAGE=	http://perl.apache.org/

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	PKGNAME

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	USE_APXS="1" EVERYTHING="1" PERL_DEBUG=1 \
		WITH_APXS="/usr/sbin/apxs" PERL_USELARGEFILES="0"

INSTALL_TARGET=	pure_install doc_install

post-build:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
	< ${FILESDIR}/mod_perl-enable > ${WRKBUILD}/mod_perl-enable

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_perl
	${INSTALL_DATA} ${WRKBUILD}/apaci/libperl.so ${PREFIX}/lib/mod_perl.so
	${INSTALL_DATA} ${WRKSRC}/htdocs/manual/mod/* \
		${PREFIX}/share/doc/mod_perl
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_perl-enable ${PREFIX}/sbin

.include <bsd.port.mk>
