# $OpenBSD: Makefile,v 1.19 2004/09/14 23:43:56 espie Exp $

COMMENT=		"OpenCM change management system"

V=			0.1.2alpha7pl1
sV=			-1
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

# where the source files and patches can be fetched
#
MASTER_SITES=		${HOMEPAGE}releases/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf

LDFLAGS+= -L${LOCALBASE}/lib -lgc

CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -DUSE_SYSTEM_ZLIB" \
			vl_cv_lib_kerberos=1

MAKE_ENV= LDFLAGS="${LDFLAGS}"

NO_REGRESS=	Yes

MAKE_FLAGS+=		TEXI2DVI=: DVIPS=:
MAKE_FLAGS+= LIBZ=-lz USOURCE_SUBDIRS="libgdiff src"
MAKE_FLAGS+= LIBGC=
FAKE_FLAGS=		${MAKE_FLAGS}

post-install:
	gunzip ${PREFIX}/info/opencm.info.gz


LIB_DEPENDS=		gc.1:boehm-gc->=6.2:devel/boehm-gc

WRKSRC=			${WRKDIST}/base

.include <bsd.port.mk>
