# $OpenBSD: Makefile,v 1.3 2004/01/18 14:10:40 wilfried Exp $

COMMENT=	"distributed command execution"

DISTNAME=	tentakel-2.1.2
CATEGORIES=	sysutils
MAINTAINER=	Sebastian Stark <seb@todesplanet.de>
HOMEPAGE=	http://tentakel.biskalar.de/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tentakel/}
EXTRACT_SUFX=	.tgz

# BSD + LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	python2.2 python2.3
FLAVOR?=	python2.3
.if ${FLAVOR:L} == "python2.2"
PYTHON_VER=	2.2
.else
PYTHON_VER=	2.3
.endif

MAKE_ENV=	PYTHON="${LOCALBASE}/bin/${FLAVOR}"

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
SUBST_VARS=	PYTHON_VER

REGRESS_IS_INTERACTIVE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tentakel
	${INSTALL_DATA} ${WRKSRC}/tentakel.conf.example ${PREFIX}/share/examples/tentakel

.include <bsd.port.mk>
