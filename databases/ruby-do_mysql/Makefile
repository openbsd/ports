# $OpenBSD: Makefile,v 1.4 2011/09/16 08:48:04 espie Exp $

COMMENT=		ruby-data_objects driver for MySQL

DISTNAME=		do_mysql-0.10.2
REVISION =		1
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

WANTLIB=		mysqlclient
LIB_DEPENDS=		databases/mysql

# Requires running MySQL database
REGRESS_IS_INTERACTIVE = Yes
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}
do-regress:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
