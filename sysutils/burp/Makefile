# $OpenBSD: Makefile,v 1.1.1.1 2017/11/03 11:31:01 landry Exp $

COMMENT =	BackUp and Restore Program
DISTNAME =	burp-2.0.54

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
WANTLIB +=	bz2 c crypto m ncurses rsync ssl z

SUBST_VARS +=	TRUEPREFIX
post-patch:
	${SUBST_CMD} ${WRKSRC}/src/client/monitor/status_client_ncurses.c

post-install:
	@rm -Rf ${WRKINST}/${SYSCONFDIR}/burp/autoupgrade
	@mv ${WRKINST}/${SYSCONFDIR}/burp ${PREFIX}/share/examples/burp

.include <bsd.port.mk>
