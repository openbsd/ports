# $OpenBSD: Makefile,v 1.8 2014/09/13 18:09:22 brad Exp $

COMMENT=	local CVE checker tool

DISTNAME=	cvechecker-3.5
REVISION=	0
CATEGORIES=	security sysutils

HOMEPAGE=	http://cvechecker.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c config sqlite3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cvechecker/}

BUILD_DEPENDS=	devel/argp-standalone

LIB_DEPENDS=	devel/libconfig

RUN_DEPENDS=	net/wget \
		sysutils/coreutils \
		textproc/libxslt

# XXX non functionnal yet
#FLAVORS=	mysql
FLAVOR?=

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/db

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-largp"
CONFIGURE_ARGS=	--enable-sqlite3

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/cvechecker

.if ${FLAVOR:Mmysql}
WANTLIB += crypto m mysqlclient ssl z
LIB_DEPENDS +=	databases/mariadb
CONFIGURE_ARGS += --enable-mysql
.endif

pre-configure:
	perl -pi -e 's,seq ,gseq ,g' ${WRKSRC}/scripts/pullcves

post-install:
	rmdir ${WRKINST}/var/db/cvechecker/*
	rmdir ${WRKINST}/var/db/cvechecker

.include <bsd.port.mk>
