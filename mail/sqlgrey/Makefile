# $OpenBSD: Makefile,v 1.7 2014/05/30 13:22:57 giovanni Exp $

COMMENT =	postfix greylist daemon

DISTNAME =	sqlgrey-1.7.6
REVISION =	1
CATEGORIES =	mail

HOMEPAGE =	http://sqlgrey.sf.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqlgrey/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
EXTRACT_SUFX =		.tar.bz2

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
