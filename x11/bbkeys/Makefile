# $OpenBSD: Makefile,v 1.1.1.1 2001/01/06 23:58:06 naddy Exp $

DISTNAME=	bbkeys-0.3.5
CATEGORIES=	x11
NEED_VERSION=	1.310
MASTER_SITES=	http://movingparts.windsofstorm.net/bbkeys/	\
		http://openbsd.rutgers.edu/
HOMEPAGE=	http://movingparts.windsofstorm.net/bbkeys.shtml

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS= qt
FLAVOR?=

.if ${FLAVOR:L:Mqt}
LIB_DEPENDS=	qt.2:x11/qt2
PATCH_LIST=	qt-*
.else
PATCH_LIST=
.endif
RUN_DEPENDS=	blackbox::x11/blackbox

CONFIGURE_STYLE= gnu
MAKE_FLAGS=	FLAVOR='${FLAVOR}'

.include <bsd.port.mk>
