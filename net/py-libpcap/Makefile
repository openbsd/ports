# $OpenBSD: Makefile,v 1.8 2002/10/28 01:38:46 naddy Exp $

COMMENT=	"libpcap bindings for Python"

V=		0.2
DISTNAME=	pylibpcap-${V}
PKGNAME=	py-libpcap-${V}
CATEGORIES=	net

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
