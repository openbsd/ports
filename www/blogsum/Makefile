# $OpenBSD: Makefile,v 1.2 2009/11/14 05:28:28 jdixon Exp $

COMMENT =		simple weblog

DISTNAME =		blogsum-1.0
CATEGORIES =		www
HOMEPAGE =		http://blogsum.obfuscurity.com/

MAINTAINER =		Jason Dixon <jdixon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.dixongroup.net/
NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/blogsum
SUBST_VARS =	INSTDIR EXAMPLESDIR

EXAMPLESDIR =	${PREFIX}/blogsum/examples

RUN_DEPENDS =	::databases/p5-DBD-SQLite \
		::databases/p5-DBI \
		::textproc/p5-XML-RSS \
		::textproc/p5-XML-Simple \
		::www/mod_perl \
		::www/p5-HTML-Template \
		::www/p5-HTTP-Lite


post-extract:
	@cp ${FILESDIR}/README.OpenBSD ${WRKSRC}/docs/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/README.OpenBSD \
		${WRKSRC}/examples/httpd-blogsum.conf

do-install:
	@find ${WRKDIST} -name \*.bak -or -name \*.orig | xargs rm
	@cp -R ${WRKDIST} ${INSTDIR}

.include <bsd.port.mk>
