# $OpenBSD: Makefile,v 1.17 2000/09/06 00:30:08 brad Exp $

DISTNAME=	jed-B0.99-11
PKGNAME=	jed-0.99.11
CATEGORIES=	editors
NEED_VERSION=	1.322
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/jed/v0.99/

LIB_DEPENDS=	slang.14::devel/libslang

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	JED_ROOT="${PREFIX}/lib/jed"

ALL_TARGET=	all getmail

FLAVORS=	xjed
FLAVOR?=

.if ${FLAVOR:L:Mxjed}
USE_X11=	Yes
ALL_TARGET+=	xjed
.endif

.include <bsd.port.mk>
