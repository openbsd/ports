# $OpenBSD: Makefile,v 1.1.1.1 2008/06/07 23:27:17 ckuethe Exp $

COMMENT-main=		"GPS processing toolkit"
COMMENT-devel=		"GPStk development libraries and headers"

V=			1.5
DISTNAME=		gpstk${V}
PKGNAME-main=		gpstk-${V}
PKGNAME-devel=		gpstk-devel-${V}
CATEGORIES=		geo devel
SHARED_LIBS=		base 15.0 \
			geomatics 15.0 \
			gpstk 15.0 \
			mdplib 15.0 \
			procframe 15.0 \
			rlib 15.0 \
			rxio 15.0 \
			simlib 15.0 \
			toolslib 15.0 \
			vplot 15.0


HOMEPAGE=		http://www.gpstk.org/

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gpstk/}
DISTFILES=		${DISTNAME}.src.tar.gz

AUTOCONF_VERSION=	2.60
AUTOMAKE_VERSION=	1.9
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes
VMEM_WARNING=		Yes
# way faster than -O0, a bit slower than -O2, but doesn't need 800M to compile
CFLAGS+=		-O1 -g
CXXFLAGS+=		-O1 -g

BUILD_DEPENDS=		:automake-1.9*:devel/automake \
			:autoconf-2.60:devel/autoconf
MULTI_PACKAGES=		-main -devel
WANTLIB-main=		m c stdc++ curses
WANTLIB-devel=
RUN_DEPENDS-devel=	:gpstk-main-*:geo/gpstk

WRKDIST=		${WRKDIR}/${DISTNAME}

pre-configure:
	cd ${WRKDIST} && sh autogen.sh

.include <bsd.port.mk>
