# $OpenBSD: Makefile,v 1.6 2013/03/11 11:23:58 espie Exp $

COMMENT=	analyze terminal control sequences

DISTNAME=	teseq-1.0.0
CATEGORIES=	misc
HOMEPAGE=	http://www.gnu.org/software/teseq/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=teseq/}

# enable extended regression tests
FLAVORS=	test
FLAVOR?=

WANTLIB=	c

CONFIGURE_STYLE=gnu
MAKE_FLAGS=	AM_CFLAGS=""

.if ${FLAVOR:Mtest}
BUILD_DEPENDS=	devel/check
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.endif

.include <bsd.port.mk>
