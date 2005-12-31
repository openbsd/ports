# $OpenBSD: Makefile,v 1.12 2005/12/31 13:10:15 steven Exp $

COMMENT=	"portable low-level networking library"
COMMENT-python= "python interface to libdnet"

DISTNAME=	libdnet-1.10
PKGNAME=	${DISTNAME}p1
PKGNAME-python= ${DISTNAME:S/^libdnet/py-libdnet/}
SHARED_LIBS=		dnet	1.0
MODGNU_SHARED_LIBS=	dnet	''
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libdnet/}

HOMEPAGE=	http://libdnet.sourceforge.net/

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

PSEUDO_FLAVORS=        no_python
FLAVOR?=

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

.if ${FLAVOR:L:Mno_python}
CONFIGURE_ARGS+=	--without-python
.else
MULTI_PACKAGES=		-python
SUBPACKAGE?=
CONFIGURE_ARGS+=	--with-python
BUILD_DEPENDS+=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
MAKE_FLAGS=		PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}
FAKE_FLAGS=		${MAKE_FLAGS} DESTDIR=${WRKINST}
PYTHON_VER=		2.3
SUBST_VARS=		PYTHON_VER
.  if defined(PACKAGING) && ${SUBPACKAGE} == "-python"
LIB_DEPENDS+=           python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
WANTLIB+=               m pthread util
.  endif
.endif

.include <bsd.port.mk>
