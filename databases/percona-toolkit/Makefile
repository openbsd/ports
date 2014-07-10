# $OpenBSD: Makefile,v 1.14 2014/07/10 20:02:41 giovanni Exp $

COMMENT =	MySQL Percona tools

V =		2.2.9
DISTNAME =	percona-toolkit-${V}
EPOCH =		0
CATEGORIES =	databases perl5

HOMEPAGE =	http://www.percona.com/software/percona-toolkit/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.percona.com/redir/downloads/percona-toolkit/${V}/

RUN_DEPENDS =	databases/p5-DBD-mysql>=3.0 \
		devel/p5-Term-ReadKey \
		sysutils/flock \
		sysutils/lsof

CONFIGURE_STYLE =	perl
TEST_TARGET =	test

pre-configure:
	@find ${WRKSRC} \( -name "*.orig" \) \
		-exec rm -f {} \;

.include <bsd.port.mk>
