# $OpenBSD: Makefile,v 1.8 2003/06/16 14:50:33 jakob Exp $

COMMENT=	"authoritative-only name server daemon"

VERSION=	1.1.0
DISTNAME=	nsd-${VERSION}
PKGNAME=	nsd-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/

HOMEPAGE=	http://www.nlnetlabs.nl/nsd/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:named-xfer-*:net/named-xfer

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-ipv6 \
			--enable-dnssec \
			--enable-bind8-stats \
			--with-namexfer=${LOCALBASE}/libexec/named-xfer \
			--with-librap \
			--with-user=named \
			--with-pidfile=/var/run/nsd.pid

NO_REGRESS=	Yes

DOCDIR=		share/doc/nsd
DOCFILES=	README RELNOTES CREDITS DIFFERENCES REQUIREMENTS

EXAMPLESDIR=	share/examples/nsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nsd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/nsd-notify ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/zonec ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/nsdc.sh ${PREFIX}/sbin/nsdc
	${INSTALL_MAN} ${WRKSRC}/nsd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/nsd-notify.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/nsdc.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/zonec.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/nsd.zones.sample ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/nsdc.conf.sample ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/${DOCDIR}
.endfor

.include <bsd.port.mk>
