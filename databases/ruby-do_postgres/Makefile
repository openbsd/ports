# $OpenBSD: Makefile,v 1.3 2010/12/28 11:02:27 jasper Exp $

COMMENT=		DataObjects driver for PostgreSQL

DISTNAME=		do_postgres-0.10.2
REVISION=		0
CATEGORIES=		databases

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-data_objects,${MODRUBY_FLAVOR}

WANTLIB=		pq
LIB_DEPENDS=		databases/postgresql,-main

# Requires running PostgreSQL database
REGRESS_IS_INTERACTIVE = Yes
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}
do-regress:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
