# $OpenBSD: Makefile,v 1.1.1.1 2000/07/11 00:56:36 naddy Exp $

DISTNAME=	aumix-2.6.1
CATEGORIES=	audio
NEED_VERSION=	1.311
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE} \
		http://jpj.net/~trevor/aumix/ \
		http://jpj.net/~trevor/aumix/old/
MASTER_SITE_SUBDIR= aumix

HOMEPAGE=	http://www.jpj.net/~trevor/aumix.html

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	naddy@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11 no_curses dummy
FLAVOR?=

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-gtk
.else
LIB_DEPENDS+=	gtk.1.2::x11/gtk+
.endif
.if ${FLAVOR:L:Mno_curses} 
CONFIGURE_ARGS+= --without-ncurses
.endif
.if ${FLAVOR:L:Mdummy}
CONFIGURE_ARGS+= --enable-dummy-mixer
.endif

.include <bsd.port.mk>
