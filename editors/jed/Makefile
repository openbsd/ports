# $OpenBSD: Makefile,v 1.40 2013/03/11 11:02:50 espie Exp $

COMMENT=	text editor

DISTNAME=	jed-0.99-19
PKGNAME=	jed-0.99.19
REVISION=	0
CATEGORIES=	editors
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/ \
		ftp://ftp.ntua.gr/pub/lang/slang/jed/v0.99/ \
		ftp://ftp.fu-berlin.de/pub/unix/editors/jed/v0.99/

HOMEPAGE=	http://www.jedsoft.org/jed/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m slang>=15 termcap util

LIB_DEPENDS=	devel/libslang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV+=	JED_ROOT="${PREFIX}/lib/jed"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

FLAVORS=	no_x11
FLAVOR?=
USE_GROFF =	Yes

.if ${FLAVOR} == "no_x11"
ALL_TARGET=	all getmail
.else
ALL_TARGET=	all getmail xjed
WANTLIB+=	X11
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
