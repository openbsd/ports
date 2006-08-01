# $OpenBSD: Makefile,v 1.28 2006/08/01 23:39:08 espie Exp $

COMMENT=	"text editor"

DISTNAME=	jed-0.99-16
PKGNAME=	jed-0.99.16
CATEGORIES=	editors
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/ \
		ftp://ftp.ntua.gr/pub/lang/slang/jed/v0.99/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/jed/v0.99/

HOMEPAGE=	http://space.mit.edu/~davis/jed/

LIB_DEPENDS=	slang.>=14::devel/libslang

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m termcap util

FAKE=		lib
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	JED_ROOT="${PREFIX}/lib/jed"
CONFIGURE_ENV+= DEPBASE=${DEPBASE}

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
ALL_TARGET=	all getmail
.else
USE_X11=	Yes
ALL_TARGET=	all getmail xjed
WANTLIB+=	X11 Xext Xft Xrender freetype
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
