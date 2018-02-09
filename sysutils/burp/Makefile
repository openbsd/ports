# $OpenBSD: Makefile,v 1.3 2018/02/09 10:41:45 nigel Exp $

COMMENT =	BackUp and Restore Program
DISTNAME =	burp-2.0.54
REVISION =	1

CATEGORIES =	sysutils
HOMEPAGE =	http://burp.grke.org/

# AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=burp/}
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE =	gnu
INSTALL_TARGET =	install-all

# check is used for tests but detected at configure time
BUILD_DEPENDS =	devel/uthash \
		devel/check
LIB_DEPENDS =	net/librsync
RUN_DEPENDS =	shells/bash
WANTLIB +=	b2 c crypto m curses rsync ssl z

SUBST_VARS +=	TRUEPREFIX
post-patch:
	${SUBST_CMD} ${WRKSRC}/src/client/monitor/status_client_ncurses.c

post-install:
	@rm -Rf ${WRKINST}/${SYSCONFDIR}/burp/autoupgrade
	@mv ${WRKINST}/${SYSCONFDIR}/burp ${PREFIX}/share/examples/burp

.include <bsd.port.mk>
