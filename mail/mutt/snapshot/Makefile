# $OpenBSD: Makefile,v 1.46 2008/02/06 15:01:56 okan Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.17
DISTNAME=	mutt-${VERSION}
PKGNAME=	${DISTNAME}p0
MASTER_SITES=	${MASTER_SITES_MUTT:=devel/}

FLAVORS=	idn sasl sidebar
FLAVOR?=

AUTOCONF_VERSION=2.61

CONFIGURE_ARGS=	--enable-smtp \
		--mandir=${PREFIX}/man \
		--enable-hcache \
		--without-gdbm

LIB_DEPENDS=	qdbm.>=14::databases/qdbm

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
.endif

WANTLIB=	c crypto des ssl z

.include <bsd.port.mk>
