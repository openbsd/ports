# $OpenBSD: Makefile,v 1.44 2001/03/24 19:55:39 jakob Exp $

COMMENT=	network protocol analyzer

DISTNAME=	ethereal-0.8.16
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
BUILD_DEPENDS=	python::lang/python

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
SYSCONFDIR=		${PREFIX}/share/ethereal
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

FLAVORS=	snmp

FLAVOR?=
.if ${FLAVOR:L} == "snmp"
CONFIGURE_ARGS+=	--enable-snmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto"
BUILD_DEPENDS+=		${PREFIX}/lib/libsnmp.a::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--disable-snmp
.endif

post-install:
	${INSTALL_MAN} ${WRKBUILD}/editcap.1   ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/ethereal.1  ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/tethereal.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
