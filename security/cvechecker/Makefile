# $OpenBSD: Makefile,v 1.19 2020/07/31 13:28:05 ajacoutot Exp $

COMMENT=	local CVE checker tool

GH_ACCOUNT=	sjvermeu
GH_PROJECT=	cvechecker
GH_TAGNAME=	v3.9
REVISION=	1

CATEGORIES=	security sysutils

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c config sqlite3

BUILD_DEPENDS=	devel/argp-standalone

LIB_DEPENDS=	devel/libconfig \
		databases/sqlite3

RUN_DEPENDS=	net/wget \
		sysutils/coreutils \
		textproc/libxslt

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
