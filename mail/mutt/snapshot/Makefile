# $OpenBSD: Makefile,v 1.48 2008/05/21 13:46:19 sthen Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.18
DISTNAME=	mutt-${VERSION}
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

MUTTRCDIR=	doc/

.include <bsd.port.mk>
