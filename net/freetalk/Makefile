# $OpenBSD: Makefile,v 1.8 2010/11/11 14:00:44 espie Exp $

COMMENT=	console based Jabber client

DISTNAME=	freetalk-3.2
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://www.gnu.org/software/freetalk/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c glib-2.0 gmp idn ltdl m ncurses pthread readline stdc++ \
		guile loudmouth-1.>=3

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=freetalk/}

MODULES=	devel/gettext
LIB_DEPENDS=	::lang/guile \
		::net/loudmouth

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE= gnu autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"
USE_GROFF =	Yes

.include <bsd.port.mk>
