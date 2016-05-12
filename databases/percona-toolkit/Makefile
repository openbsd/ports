# $OpenBSD: Makefile,v 1.16 2016/05/12 14:00:13 espie Exp $

COMMENT =	MySQL Percona tools

V =		2.2.9
DISTNAME =	percona-toolkit-${V}
REVISION =	1
EPOCH =		0
CATEGORIES =	databases perl5

HOMEPAGE =	http://www.percona.com/software/percona-toolkit/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.percona.com/redir/downloads/percona-toolkit/${V}/

RUN_DEPENDS =	databases/p5-DBD-mysql>=3.0 \
		sysutils/flock

CONFIGURE_STYLE =	perl
TEST_TARGET =	test

pre-configure:
	@find ${WRKSRC} \( -name "*.orig" \) \
		-exec rm -f {} \;

.include <bsd.port.mk>
