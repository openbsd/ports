# $OpenBSD: Makefile,v 1.47 2008/05/09 17:46:51 bernd Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.17
DISTNAME=	mutt-${VERSION}
PKGNAME=	${DISTNAME}p0
MASTER_SITES=	${MASTER_SITES_MUTT:=devel/}

WANTLIB=	z

FLAVORS=	idn sasl sidebar
FLAVOR?=

CONFIGURE_ARGS= --enable-hcache \
		--enable-smtp \
		--without-gdbm

LIB_DEPENDS=	qdbm.>=14::databases/qdbm

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
.endif

.include <bsd.port.mk>
