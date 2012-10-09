# $OpenBSD: Makefile,v 1.7 2012/10/09 15:39:13 giovanni Exp $

COMMENT =	MySQL Percona tools

V =		2.1.4
DISTNAME =	percona-toolkit-${V}
EPOCH =		0
CATEGORIES =	databases perl5

HOMEPAGE =	http://www.percona.com/software/percona-toolkit/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.percona.com/redir/downloads/percona-toolkit/${V}/

RUN_DEPENDS =	databases/p5-DBD-mysql>=3.0 \
		devel/p5-Term-ReadKey \
		sysutils/flock \
		sysutils/lsof

CONFIGURE_STYLE = perl

pre-configure:
	@find ${WRKSRC} \( -name "*.orig" \) \
		-exec rm -f {} \;

.include <bsd.port.mk>
