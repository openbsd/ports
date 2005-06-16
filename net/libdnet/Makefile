# $OpenBSD: Makefile,v 1.10 2005/06/16 05:14:42 sturm Exp $

COMMENT=	"portable low-level networking library"
COMMENT-python= "python interface to libdnet"

DISTNAME=	libdnet-1.10
PKGNAME-python= ${DISTNAME:S/^libdnet/py-libdnet/}
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

CONFIGURE_STYLE= gnu

.if ${FLAVOR:L:Mno_python}
CONFIGURE_ARGS+=	--without-python
.else
MULTI_PACKAGES=		-python
SUBPACKAGE?=
CONFIGURE_ARGS+=	--with-python
BUILD_DEPENDS+=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
PYTHON_VER=		2.3
SUBST_VARS=		PYTHON_VER
.  if defined(PACKAGING) && ${SUBPACKAGE} == "-python"
LIB_DEPENDS+=           python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
WANTLIB+=               m pthread util
.  endif
.endif

.include <bsd.port.mk>
