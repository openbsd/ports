# $OpenBSD: Makefile,v 1.40 2000/11/20 22:18:50 jakob Exp $

DISTNAME=	ethereal-0.8.14
CATEGORIES=	net x11
NEED_VERSION=	1.305

MASTER_SITES=	http://www.ethereal.com/distribution/ \
		http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://www.ethereal.com/distribution/old-versions/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

HOMEPAGE=	http://ethereal.zing.org/

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

.include <bsd.port.mk>
