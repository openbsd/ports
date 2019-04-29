# $OpenBSD: Makefile,v 1.23 2019/04/29 15:01:27 naddy Exp $

COMMENT=		WWW OFFLine Explorer

DISTNAME=		wwwoffle-2.9j
CATEGORIES=		www

HOMEPAGE=		http://www.gedanken.org.uk/software/wwwoffle/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c z

MASTER_SITES=		http://www.gedanken.org.uk/software/wwwoffle/download/
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	gnu

# don't pick up gtar
CONFIGURE_ENV=		TAR=tar

MAKE_FLAGS=		prefix="${PREFIX}"
FAKE_FLAGS=		CONFDIR="${WRKINST}${PREFIX}/share/examples/wwwoffle"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${LOCALSTATEDIR}/spool/wwwoffle/monitor

.include <bsd.port.mk>
