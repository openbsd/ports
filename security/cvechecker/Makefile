# $OpenBSD: Makefile,v 1.12 2016/09/23 09:16:57 sthen Exp $

COMMENT=	local CVE checker tool

DISTNAME=	cvechecker-3.6
CATEGORIES=	security sysutils
REVISION=	0

HOMEPAGE=	https://github.com/sjvermeu/cvechecker/wiki

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c config sqlite3

MASTER_SITES=	https://raw.githubusercontent.com/wiki/sjvermeu/cvechecker/releases/

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

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-largp"
CONFIGURE_ARGS=	--enable-sqlite3

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/cvechecker

.if ${FLAVOR:Mmysql}
WANTLIB +=	crypto m mysqlclient ssl z
LIB_DEPENDS +=	databases/mariadb
CONFIGURE_ARGS += --enable-mysql
.endif

pre-configure:
	sed -i 's,seq ,gseq ,g' ${WRKSRC}/scripts/pullcves

post-install:
	rmdir ${WRKINST}/var/db/cvechecker/*
	rmdir ${WRKINST}/var/db/cvechecker

.include <bsd.port.mk>
