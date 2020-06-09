# $OpenBSD: Makefile,v 1.18 2020/06/09 07:14:45 jasper Exp $

COMMENT=	local CVE checker tool

GH_ACCOUNT=	sjvermeu
GH_PROJECT=	cvechecker
GH_TAGNAME=	v3.9
REVISION=	0

CATEGORIES=	security sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c config sqlite3

BUILD_DEPENDS=	devel/argp-standalone

LIB_DEPENDS=	devel/libconfig \
		databases/sqlite3

RUN_DEPENDS=	net/wget \
		sysutils/coreutils \
		textproc/libxslt

# XXX non functional yet
#FLAVORS=	mysql
FLAVOR?=

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/db

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=autoreconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-largp"
CONFIGURE_ARGS=	--enable-sqlite3

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/cvechecker

pre-configure:
	sed -i 's,seq ,gseq ,g' ${WRKSRC}/scripts/pullcves

post-install:
	rmdir ${WRKINST}/var/db/cvechecker/*
	rmdir ${WRKINST}/var/db/cvechecker

.include <bsd.port.mk>
