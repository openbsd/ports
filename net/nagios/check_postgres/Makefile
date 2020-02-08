# $OpenBSD: Makefile,v 1.9 2020/02/08 12:39:59 sthen Exp $

PKG_ARCH=	*

COMMENT=	Nagios plugin to monitor PostgresQL
DISTNAME=	check_postgres-2.25.0
CATEGORIES=	net databases

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://bucardo.org/wiki/Check_postgres
MASTER_SITES=	http://bucardo.org/downloads/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	perl
CONFIGURE_STYLE= perl

TEST_DEPENDS=	${RUN_DEPENDS} \
		databases/postgresql,-server

RUN_DEPENDS=	databases/p5-DBD-Pg

pre-configure:
	@perl -pi -e 's,data space,data_space,g' ${WRKSRC}/t/CP_Testing.pm
	@${SUBST_CMD} ${WRKSRC}/check_postgres.pl

INSTDIR= ${PREFIX}/libexec/nagios/

post-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${INSTDIR} && ${PREFIX}/bin/check_postgres.pl --symlinks

.include <bsd.port.mk>
