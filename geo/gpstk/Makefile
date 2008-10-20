# $OpenBSD: Makefile,v 1.7 2008/10/20 20:00:21 sthen Exp $

COMMENT-main=		GPS processing toolkit
COMMENT-devel=		GPStk development libraries and headers

V=			1.5
DISTNAME=		gpstk${V}
PKGNAME-main=		gpstk-${V}p3
PKGNAME-devel=		gpstk-devel-${V}p3
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
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
# way faster than -O0, a bit slower than -O2, but doesn't need 800M to compile
CFLAGS+=		-O1 -g
CXXFLAGS+=		-O1 -g
.else
# ...but -O1 is still too much for most build machines, so just use it on the
# fastest ones.
CFLAGS+=		-O0 -g
CXXFLAGS+=		-O0 -g
.endif

USE_LIBTOOL=		Yes
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
MULTI_PACKAGES=		-main -devel
WANTLIB-main=		m c stdc++ curses
WANTLIB-devel=
RUN_DEPENDS-devel=	:gpstk-main-$V:geo/gpstk

WRKDIST=		${WRKDIR}/${DISTNAME}

pre-configure:
	cd ${WRKDIST} && sh autogen.sh

post-install:
	@mv ${PREFIX}/bin/tracker ${PREFIX}/bin/gpstracker

.include <bsd.port.mk>
