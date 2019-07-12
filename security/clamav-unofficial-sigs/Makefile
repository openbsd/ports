# $OpenBSD: Makefile,v 1.16 2019/07/12 21:15:35 sthen Exp $

COMMENT =	fetch and update unofficial signatures for ClamAV

V =		4.9.2
REVISION =	2
DISTNAME =	clamav-unofficial-sigs-$V
DISTFILES =	${DISTNAME}{$V}.tar.gz

CATEGORIES =	security mail

HOMEPAGE =	https://github.com/extremeshok/clamav-unofficial-sigs

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/extremeshok/clamav-unofficial-sigs/archive/

RUN_DEPENDS =	net/curl \
		net/rsync \
		security/clamav \
		security/gnupg \
		shells/bash

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-configure:
	${SUBST_CMD} ${WRKSRC}/clamav-unofficial-sigs.conf
	sed -i -e 's,/etc,${SYSCONFDIR},' -e \
	    's,/usr/local/bin,${LOCALBASE}/bin,' \
	    ${WRKSRC}/clamav-unofficial-sigs.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamav-unofficial-sigs
	cd ${WRKSRC}; \
	${INSTALL_SCRIPT} clamav-unofficial-sigs.sh ${PREFIX}/bin; \
	${INSTALL_DATA} clamav-unofficial-sigs.conf \
	    ${PREFIX}/share/examples/clamav-unofficial-sigs; \
	${INSTALL_MAN} clamav-unofficial-sigs.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
