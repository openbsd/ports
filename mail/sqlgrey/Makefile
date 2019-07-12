# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:38 sthen Exp $

COMMENT =	postfix greylist daemon

DISTNAME =	sqlgrey-1.8.0
CATEGORIES =	mail
REVISION =	0

HOMEPAGE =	http://sqlgrey.sf.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqlgrey/}

# GPLv2
PERMIT_PACKAGE =	Yes

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		devel/p5-Net-Server \
			devel/p5-IO-Multiplex \
			devel/p5-Date-Calc \
			p5-DBD-SQLite-*|p5-DBD-mysql-*|p5-DBD-Pg-*:databases/p5-DBD-SQLite

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/DBIx/
	${INSTALL_DATA} ${WRKSRC}/lib/DBIx-DBCluster-0.01/DBCluster.pm \
		${PREFIX}/libdata/perl5/site_perl/DBIx/DBCluster.pm

.include <bsd.port.mk>
