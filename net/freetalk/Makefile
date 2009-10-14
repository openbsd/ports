# $OpenBSD: Makefile,v 1.3 2009/10/14 23:18:31 kili Exp $

COMMENT=	console based Jabber client

DISTNAME=	freetalk-3.2

CATEGORIES=	net

HOMEPAGE=	http://www.gnu.org/software/freetalk/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c glib-2.0 gmp idn ltdl m ncurses pthread readline stdc++

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=freetalk/}

MODULES=	devel/gettext
LIB_DEPENDS=	guile::lang/guile \
		loudmouth-1.>=3::net/loudmouth

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE= gnu autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
