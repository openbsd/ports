# $OpenBSD: Makefile,v 1.17 2020/03/20 16:44:28 naddy Exp $

COMMENT =		simple weblog

DISTNAME =		blogsum-1.1
REVISION =		8
CATEGORIES =		www
HOMEPAGE =		http://blogsum.obfuscurity.com/

# BSD
PERMIT_PACKAGE =		Yes

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
		www/ap2-mod_perl \
		www/p5-CGI \
		www/p5-HTML-Template \
		www/p5-HTTP-Lite

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/httpd-blogsum.conf

do-install:
	@find ${WRKDIST} \( -name \*.bak -o -name \*.orig \) -delete
	@cp -R ${WRKDIST} ${INSTDIR}

.include <bsd.port.mk>
