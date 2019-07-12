# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:34 sthen Exp $

COMMENT =		protocol, service, network, host and ether info for Tcl

DISTNAME =		netinfo-0.6
CATEGORIES =		net
HOMEPAGE =		http://www3.bell.net/stwo/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE:=software/}
MODULES =		lang/tcl
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
TEST_DEPENDS =		${MODTCL_BUILD_DEPENDS}
TEST_FLAGS =		TCLLIBPATH=.
NO_BUILD =		Yes
PKG_ARCH =		*
WRKDIST =		${WRKDIR}/netinfo

NI_MOD_DIR =		${DESTDIR}${MODTCL_MODDIR}/85
NI_MAN_DIR =		${PREFIX}/man/mann
NI_EXA_DIR =		${PREFIX}/share/examples/netinfo

do-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/tknib.tcl

do-test:
	cd ${WRKSRC} && \
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${MODTCL_BIN} netinfo_test.tcl

do-install:
	${INSTALL_DATA_DIR} ${NI_MOD_DIR} ${NI_MAN_DIR} ${NI_EXA_DIR}
	${INSTALL_DATA}   ${WRKSRC}/netinfo.tcl       ${NI_MOD_DIR}/netinfo-0.6.tm
	${INSTALL_MAN}    ${WRKSRC}/netinfo.n         ${NI_MAN_DIR}
	${INSTALL_DATA}   ${WRKSRC}/{LICENSE,nid.tcl} ${NI_EXA_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/tknib.tcl         ${NI_EXA_DIR}

.include <bsd.port.mk>
