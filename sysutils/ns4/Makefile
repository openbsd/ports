# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:31 espie Exp $

PKG_ARCH =	*

COMMENT =	configuration management tool

DISTNAME =	ns436
PKGNAME =	ns4-4.3.6
REVISION =	0

CATEGORIES =	sysutils net

HOMEPAGE =	http://netnix.org/index.php?post_id=1

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://netnix.org/files/

RUN_DEPENDS =	devel/p5-Expect \
		devel/p5-YAML-Syck \
		net/p5-Net-SNMP \
		net/p5-Net-SSH2 \
		www/p5-libwww

NO_BUILD =		Yes
NO_TEST =		Yes

pre-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},' ${WRKSRC}/ns4

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ns4 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ns4
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/ns4
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns4/cfg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns4/scripts
	${INSTALL_DATA} ${WRKSRC}/cfg/* ${PREFIX}/share/examples/ns4/cfg
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${PREFIX}/share/examples/ns4/scripts

.include <bsd.port.mk>
