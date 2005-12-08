# $OpenBSD: Makefile,v 1.29 2005/12/08 10:45:45 jakob Exp $

COMMENT=	"authoritative-only name server daemon"

VERSION=	2.3.3
DISTNAME=	nsd-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/

HOMEPAGE=	http://www.nlnetlabs.nl/nsd/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c wrap crypto

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-dnssec \
			--enable-bind8-stats \
			--with-libwrap=/usr/lib \
			--with-ssl=/usr \
			--with-user=named \
			--with-pidfile=/var/run/nsd.pid \
			--with-zonesdir=/var/nsd \
			--with-dbfile=/var/nsd/nsd.db

NO_REGRESS=	Yes

EXE=		nsd nsd-notify nsd-xfer zonec
MAN8=		nsd.8 nsd-notify.8 nsd-xfer.8 zonec.8 nsdc.8
DOCDIR=		share/doc/nsd
DOCFILES=	README RELNOTES CREDITS DIFFERENCES REQUIREMENTS

EXAMPLESDIR=	share/examples/nsd

do-install:
.for f in ${EXE}
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/sbin
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/nsdc.sh ${PREFIX}/sbin/nsdc
.for f in ${MAN8}
	${INSTALL_MAN} ${WRKSRC}/${f} ${PREFIX}/man/man8
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/nsd.zones.sample ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/nsdc.conf.sample ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/${DOCDIR}
.endfor

.include <bsd.port.mk>
