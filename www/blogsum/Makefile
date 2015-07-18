# $OpenBSD: Makefile,v 1.11 2015/07/18 20:59:06 ajacoutot Exp $

COMMENT =		simple weblog

DISTNAME =		blogsum-1.1
REVISION =		4
CATEGORIES =		www
HOMEPAGE =		http://blogsum.obfuscurity.com/

MAINTAINER =		Jason Dixon <jdixon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://www.dixongroup.net/
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/blogsum
SUBST_VARS =	INSTDIR EXAMPLESDIR

EXAMPLESDIR =	${PREFIX}/blogsum/examples

RUN_DEPENDS =	databases/p5-DBD-SQLite \
		databases/p5-DBI \
		textproc/p5-XML-RSS \
		textproc/p5-XML-Simple \
		www/mod_perl \
		www/p5-HTML-Template \
		www/p5-HTTP-Lite


pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/httpd-blogsum.conf

do-install:
	@find ${WRKDIST} -name \*.bak -or -name \*.orig | xargs rm
	@cp -R ${WRKDIST} ${INSTDIR}

.include <bsd.port.mk>
