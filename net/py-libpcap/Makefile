# $OpenBSD: Makefile,v 1.7 2002/06/09 05:37:04 wilfried Exp $

COMMENT=	"libpcap bindings for Python"

V=		0.2
DISTNAME=	pylibpcap-${V}
PKGNAME=	py-libpcap-${V}
CATEGORIES=	net
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pylibcap/}

HOMEPAGE=	http://sourceforge.net/projects/pylibpcap/

MAINTAINER=	Maurice Nonnekes <maurice@amaze.nl>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

PYTHON_VER=	2.1
SUBST_VARS=	PYTHON_VER
MAKE_ENV=	PYTHON_VER=${PYTHON_VER}

BUILD_DEPENDS+=	:swig-*:devel/swig
RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

WRKDIST=	${WRKDIR}/pylibpcap

.include <bsd.port.mk>
