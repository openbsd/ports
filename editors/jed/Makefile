# $OpenBSD: Makefile,v 1.44 2019/07/12 20:46:05 sthen Exp $

COMMENT=	text editor

DISTNAME=	jed-0.99-19
PKGNAME=	jed-0.99.19
REVISION=	2
CATEGORIES=	editors
MASTER_SITES=   http://www.jedsoft.org/releases/jed/ \
		ftp://space.mit.edu/pub/davis/jed/v0.99/ \
		ftp://ftp.ntua.gr/pub/lang/slang/jed/v0.99/ \
		ftp://ftp.fu-berlin.de/pub/unix/editors/jed/v0.99/

HOMEPAGE=	http://www.jedsoft.org/jed/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m slang>=15 util

LIB_DEPENDS=	devel/libslang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV+=	JED_ROOT="${PREFIX}/lib/jed"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR} == "no_x11"
ALL_TARGET=	all getmail
.else
ALL_TARGET=	all getmail xjed
WANTLIB+=	X11
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
