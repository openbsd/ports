# $OpenBSD: Makefile,v 1.9 2011/10/02 20:11:30 jasper Exp $

COMMENT=	implementation of basic iCAL protocols

DISTNAME=	libical-0.46

SHARED_LIBS +=  ical                 2.0      # 46.0
SHARED_LIBS +=  icalss               2.0      # 46.0
SHARED_LIBS +=  icalvcal             1.0      # 46.0

CATEGORIES=	textproc

HOMEPAGE=	http://freeassociation.sf.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeassociation/}

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pthread

USE_LIBTOOL=	Yes

AUTOCONF_VERSION= 2.60
AUTOMAKE_VERSION= 1.9

BUILD_DEPENDS=	devel/autoconf/${AUTOCONF_VERSION} \
		devel/automake/${AUTOMAKE_VERSION}
# needs the AM_PROG_LIBTOOL macro                                           
BUILD_DEPENDS+=	devel/libtool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-builtintz

do-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		./autogen.sh ${CONFIGURE_ARGS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libical/
	${INSTALL_DATA} ${WRKSRC}/doc/UsingLibical.txt \
		${PREFIX}/share/doc/libical/

.include <bsd.port.mk>
