# $OpenBSD: Makefile,v 1.3 2000/10/22 18:46:03 espie Exp $

ONLY_FOR_ARCHS=	i386 m68k sparc

DISTNAME=	mod_perl-1.24
CATEGORIES=	www perl5
NEED_VERSION=	1.337
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

HOMEPAGE=	http://perl.apache.org/

MAINTAINER=	Pavel Korovin <pvk@openbsd.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	USE_APXS="1" EVERYTHING="1" WITH_APXS="/usr/sbin/apxs"

INSTALL_TARGET=	pure_install doc_install

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
