# $OpenBSD: Makefile,v 1.1.1.1 2001/03/27 08:43:13 wilfried Exp $

COMMENT=		'mysql drivers for the perl DBI'

DISTNAME=		Msql-Mysql-modules-1.2215
PKGNAME=		p5-DBD-Msql-Mysql-1.22.15
CATEGORIES=		databases perl5
NEED_VERSION=		1.364

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

PERL_MODULES=		${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=		${PERL_MODULES}/${ARCH}-openbsd/DBI.pm::databases/p5-DBI
RUN_DEPENDS=		${PERL_MODULES}/${ARCH}-openbsd/DBI.pm::databases/p5-DBI

LIB_DEPENDS=		mysqlclient::databases/mysql

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	--noprompt \
			--mysql-install \
			--mysql-incdir=${LOCALBASE}/include/mysql \
			--mysql-libdir=${LOCALBASE}/lib/mysql \
			--nomsql-install \
			--nomsql1-install

FLAVORS=		dbimon
FLAVOR?=

.if ${FLAVOR:L:Mdbimon}
RUN_DEPENDS+=		${PERL_MODULES}/Data/ShowTable.pm::devel/p5-Data-ShowTable \
			${PERL_MODULES}/${ARCH}-openbsd/Term/ReadKey.pm::devel/p5-Term-ReadKey \
			${PERL_MODULES}/${ARCH}-openbsd/Term/ReadLine/Gnu.pm::devel/p5-Term-ReadLine-Gnu
.endif

.include <bsd.port.mk>
