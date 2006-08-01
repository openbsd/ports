# $OpenBSD: Makefile,v 1.24 2006/08/01 23:39:08 espie Exp $

COMMENT=		"OpenCM change management system"

V=			0.1.2alpha8
sV=			-2
DISTFILES=		opencm-${V}${sV}-src.tgz
DISTNAME=		opencm-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.opencm.org/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# BSD/(GPL for diff3)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ncurses readline ssl z

MASTER_SITES=		${HOMEPAGE}releases/

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf

LDFLAGS+= -L${LOCALBASE}/lib -lgc

CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}" \
			CPPFLAGS="${CPPFLAGS} \
			-I${LOCALBASE}/include -DUSE_SYSTEM_ZLIB" \
			vl_cv_lib_kerberos=1

MAKE_ENV= LDFLAGS="${LDFLAGS}"

NO_REGRESS=	Yes

MAKE_FLAGS+=		TEXI2DVI=: DVIPS=:
MAKE_FLAGS+= LIBZ=-lz USOURCE_SUBDIRS="libgdiff src"
MAKE_FLAGS+= LIBGC=
MAKE_FLAGS+=		infodir=${PREFIX}/info
MAKE_FLAGS+=		mandir=${PREFIX}/man
FAKE_FLAGS=		${MAKE_FLAGS}

post-install:
	gunzip ${PREFIX}/info/opencm.info.gz


LIB_DEPENDS=		gc.>=1:boehm-gc->=6.2:devel/boehm-gc

WRKSRC=			${WRKDIST}/base

.include <bsd.port.mk>
