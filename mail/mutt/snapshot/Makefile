# $OpenBSD: Makefile,v 1.43 2007/07/19 00:18:12 todd Exp $

COMMENT=	"tty-based e-mail client, development version"

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
