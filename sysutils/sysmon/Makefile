# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:52 sthen Exp $

COMMENT =	lightweight network monitoring tool
DISTNAME =	sysmon-0.93
CATEGORIES =	sysutils

HOMEPAGE =	https://puck.nether.net/sysmon/
MAINTAINER =	George Rosamond <george@nycbug.org>
REVISION =	3

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto curses pthread ssl

MASTER_SITES =	ftp://puck.nether.net/pub/jared/ \
		https://mirrors.nycbug.org/pub/distfiles/


CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ac_cv_header_net_snmp_version_h=no
CONFIGURE_ARGS =	--enable-ipv6

USE_GMAKE =	Yes

NO_TEST =	Yes

DOCDIR =	${PREFIX}/share/doc/sysmon
DOCS =		{README,*.html,*.jpg,*.png,*.txt}
EXAMPLEDIR =	${PREFIX}/share/examples/sysmon
MANDIR =	${PREFIX}/man

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/{sysmon,sysmond} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/${DOCS} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/examples/sysmon.conf.dist ${EXAMPLEDIR}
	${INSTALL_MAN} ${WRKDIST}/docs/sysmon.man \
		${MANDIR}/man1/sysmon.1
	${INSTALL_MAN} ${WRKDIST}/docs/sysmon.conf.man \
		${MANDIR}/man5/sysmon.conf.5

.include <bsd.port.mk>
