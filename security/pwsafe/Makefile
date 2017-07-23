# $OpenBSD: Makefile,v 1.19 2017/07/23 09:26:29 espie Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
REVISION =		5
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m ncurses crypto c ${COMPILER_LIBCXX} readline curses

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
