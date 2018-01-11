# $OpenBSD: Makefile,v 1.21 2018/01/11 19:27:12 rpe Exp $

COMMENT=		WWW OFFLine Explorer

DISTNAME=		wwwoffle-2.9i
CATEGORIES=		www
REVISION=		0

HOMEPAGE=		http://www.gedanken.org.uk/software/wwwoffle/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c z

MASTER_SITES=		http://www.gedanken.org.uk/software/wwwoffle/download/
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE=	gnu

MAKE_FLAGS=		prefix="${PREFIX}"
FAKE_FLAGS=		CONFDIR="${WRKINST}${PREFIX}/share/examples/wwwoffle"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${LOCALSTATEDIR}/spool/wwwoffle/monitor

.include <bsd.port.mk>
