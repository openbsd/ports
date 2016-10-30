# $OpenBSD: Makefile,v 1.16 2016/10/30 16:11:55 jca Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
REVISION=		4
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m ncurses crypto c stdc++ readline curses

MASTER_SITES=		${HOMEPAGE}releases/

CONFIGURE_STYLE=        gnu
USE_GMAKE=		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
WANTLIB+=		Xmu X11 SM ICE
.endif

.include <bsd.port.mk>
