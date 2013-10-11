# $OpenBSD: Makefile,v 1.13 2013/10/11 23:50:17 naddy Exp $

COMMENT=	console based Jabber client

DISTNAME=	freetalk-3.2
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://www.gnu.org/software/freetalk/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c glib-2.0 gmp idn ltdl m ncurses pthread readline stdc++ \
		guile loudmouth-1>=3

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=freetalk/}

MODULES=	devel/gettext
LIB_DEPENDS=	lang/guile \
		net/loudmouth

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

FAKE_FLAGS=	Examplesdir=${PREFIX}/share/examples/freetalk/

.include <bsd.port.mk>
