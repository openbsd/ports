# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:52 sthen Exp $

COMMENT =		DBIx::Class interface for Dancer2 applications

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-DBIC-0.0008
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.153002 \
			databases/p5-DBIx-Class

TEST_DEPENDS =		databases/p5-DBD-SQLite \
			databases/p5-DBIx-Class-Schema-Loader \
			www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>
