# $OpenBSD: Makefile,v 1.42 2007/06/21 17:26:29 bernd Exp $

COMMENT=	"tty-based e-mail client, development version"

VERSION=	1.5.16
DISTNAME=	mutt-${VERSION}
MASTER_SITES=	${MASTER_SITES_MUTT:=devel/}

FLAVORS=	idn sidebar

AUTOCONF_VERSION=2.60

CONFIGURE_ARGS=	--enable-smtp \
		--mandir=${PREFIX}/man \
		--enable-hcache \
		--without-gdbm

LIB_DEPENDS=	qdbm.>=14::databases/qdbm

.include <bsd.port.mk>
