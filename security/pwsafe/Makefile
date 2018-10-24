# $OpenBSD: Makefile,v 1.21 2018/10/24 14:28:10 sthen Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
REVISION =		7
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m ncurses crypto c ${COMPILER_LIBCXX} readline curses

COMPILER =		base-clang ports-gcc base-gcc

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
