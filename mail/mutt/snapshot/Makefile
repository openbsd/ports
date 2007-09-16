# $OpenBSD: Makefile,v 1.44 2007/09/16 00:17:05 merdely Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.16
DISTNAME=	mutt-${VERSION}
PKGNAME=	${DISTNAME}p0
MASTER_SITES=	${MASTER_SITES_MUTT:=devel/}

FLAVORS=	idn sasl sidebar
FLAVOR?=

AUTOCONF_VERSION=2.60

CONFIGURE_ARGS=	--enable-smtp \
		--mandir=${PREFIX}/man \
		--enable-hcache \
		--without-gdbm

LIB_DEPENDS=	qdbm.>=14::databases/qdbm

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
.endif

.include <bsd.port.mk>
