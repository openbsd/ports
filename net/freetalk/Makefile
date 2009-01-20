# $OpenBSD: Makefile,v 1.1.1.1 2009/01/20 08:11:34 kevlo Exp $

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

WANTLIB=	c glib-2.0 idn m ncurses readline stdc++

MASTER_SITES=	http://savannah.gnu.org/download/freetalk/

MODULES=	devel/gettext
LIB_DEPENDS=	guile-ltdl,guile::lang/guile \
		loudmouth-1.>=3::net/loudmouth

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
