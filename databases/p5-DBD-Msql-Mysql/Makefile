# $OpenBSD: Makefile,v 1.6 2001/11/10 12:29:40 espie Exp $

COMMENT=		'mysql drivers for the perl DBI'

DISTNAME=		Msql-Mysql-modules-1.2216
PKGNAME=		p5-DBD-Msql-Mysql-1.22.16
CATEGORIES=		databases perl5
NEED_VERSION=		1.482

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

BUILD_DEPENDS=		::databases/p5-DBI
RUN_DEPENDS=		::databases/p5-DBI

LIB_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql
REGRESS_DEPENDS=	:mysql-server-3.23.*:databases/mysql,-server

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
RUN_DEPENDS+=		::devel/p5-Data-ShowTable \
			::devel/p5-Term-ReadKey \
			::devel/p5-Term-ReadLine-Gnu
.endif

pre-regress:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'mysql needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
