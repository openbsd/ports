# $OpenBSD: Makefile,v 1.8 2015/04/23 08:23:54 sthen Exp $

COMMENT =	fetch and update unofficial signatures for ClamAV

DISTNAME =	clamav-unofficial-sigs-3.7.2
REVISION =	0

CATEGORIES =	security mail

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# no real homepage for the script, but this explains the available databases:
HOMEPAGE =	http://sanesecurity.com/usage/signatures/

# BSD
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=unofficial-sigs/}

RUN_DEPENDS =	net/curl net/rsync security/gnupg

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-configure:
	${SUBST_CMD} ${WRKSRC}/clamav-unofficial-sigs.conf
	perl -pi -e 's,/etc,${SYSCONFDIR},' ${WRKSRC}/clamav-unofficial-sigs.sh
# simple perl re replace; if we used SUBST_CMD for this one we'd need to
# patch a line next to a version number which makes updating a pain

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamav-unofficial-sigs
	cd ${WRKSRC}; \
	${INSTALL_SCRIPT} clamav-unofficial-sigs.sh ${PREFIX}/bin; \
	${INSTALL_DATA} clamav-unofficial-sigs.conf \
	    ${PREFIX}/share/examples/clamav-unofficial-sigs; \
	${INSTALL_MAN} clamav-unofficial-sigs.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
