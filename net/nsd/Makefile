# $OpenBSD: Makefile,v 1.3 2002/10/29 11:14:22 jakob Exp $

COMMENT=	authorative only name server daemon

VERSION=	1.0.1
DISTNAME=	nsd-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://www.nlnetlabs.nl/downloads/nsd/

HOMEPAGE=	http://www.nlnetlabs.nl/nsd/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS+=	PREFIX='${PREFIX}' \
		NSDZONESDIR=/var/nsd \
		NSDZONES=/var/nsd/nsd.zones \
		NSDUSER=named \
		CC='${CC}' CFLAGS='${CFLAGS}'

NO_REGRESS=	Yes

DOCDIR=		share/doc/nsd
DOCFILES=	README RELNOTES CREDITS DIFFERENCES REQUIREMENTS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nsd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/nsd-notify ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/zonec ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/nsdc.sh ${PREFIX}/sbin/nsdc
	${INSTALL_MAN} ${WRKSRC}/nsd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/nsdc.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/zonec.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsd
	${INSTALL_DATA} ${WRKSRC}/nsd.zones.sample ${PREFIX}/share/examples/nsd
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/${DOCDIR}
.endfor

.include <bsd.port.mk>
