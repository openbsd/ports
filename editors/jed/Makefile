# $OpenBSD: Makefile,v 1.33 2010/09/13 07:36:01 sthen Exp $

COMMENT=	text editor

DISTNAME=	jed-0.99-19
PKGNAME=	jed-0.99.19
CATEGORIES=	editors
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/ \
		ftp://ftp.ntua.gr/pub/lang/slang/jed/v0.99/ \
		ftp://ftp.fu-berlin.de/pub/unix/editors/jed/v0.99/

HOMEPAGE=	http://www.jedsoft.org/jed/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m slang.>=15 termcap util

LIB_DEPENDS=	::devel/libslang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV+=	JED_ROOT="${PREFIX}/lib/jed"
#CONFIGURE_ENV+= DEPBASE=${DEPBASE}

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
ALL_TARGET=	all getmail
.else
USE_X11=	Yes
ALL_TARGET=	all getmail xjed
WANTLIB+=	X11
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
