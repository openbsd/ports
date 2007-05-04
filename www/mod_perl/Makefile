# $OpenBSD: Makefile,v 1.19 2007/05/04 08:43:05 bernd Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=	Yes

COMMENT=	"module that embeds a Perl interpreter into Apache"

DISTNAME=	mod_perl-1.30
CATEGORIES=	www perl5
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN:=Apache/}

HOMEPAGE=	http://perl.apache.org/

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m perl util 

SUBST_VARS=	PKGNAME

NO_REGRESS=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	USE_APXS="1" EVERYTHING="1" WITH_APXS="/usr/sbin/apxs"

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
