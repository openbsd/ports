# $OpenBSD: Makefile,v 1.47 2001/06/13 21:52:50 jakob Exp $

COMMENT=	network protocol analyzer

VERSION=	0.8.17
DISTNAME=	ethereal-${VERSION}-a
PKGNAME=	ethereal-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.363

MASTER_SITES=	http://www.ethereal.com/distribution/ \
		http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://www.ethereal.com/distribution/old-versions/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

HOMEPAGE=	http://www.ethereal.com/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
SYSCONFDIR=		${PREFIX}/share/ethereal
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/${PKGNAME}

FLAVORS=	snmp

FLAVOR?=
.if ${FLAVOR:L} == "snmp"
CONFIGURE_ARGS+=	--enable-snmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto"
LIB_DEPENDS+=		snmp::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--disable-snmp
.endif

pre-build:
.if defined(SEPARATE_BUILD)
	cp -p ${WRKSRC}/packet-ncp2222.c ${WRKBUILD}
.endif

post-install:
	${INSTALL_MAN} ${WRKBUILD}/editcap.1   ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/ethereal.1  ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/tethereal.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
