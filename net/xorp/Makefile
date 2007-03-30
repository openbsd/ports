# $OpenBSD: Makefile,v 1.9 2007/03/30 19:23:46 naddy Exp $

COMMENT-main=	"eXtensible Open Router Platform"

VERSION=	1.4
DISTNAME=	xorp-${VERSION}
PKGNAME-main=	${DISTNAME}p0
CATEGORIES=	net
HOMEPAGE=	http://www.xorp.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xorp.org/releases/${VERSION}/ \
		http://www2.xorp.org/releases/${VERSION}/ \
		http://www3.xorp.org/releases/${VERSION}/

MULTI_PACKAGES=	-main
PREFIX=		${LOCALBASE}/xorp
PREFIX-main=	${LOCALBASE}

WANTLIB=	c crypto curses m stdc++

# No BUILD_DEPENDS:
# Python only used to rebuild already included file with no changes.

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-optimize --disable-debug
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/cli/libtecla

REGRESS_DEPENDS=	::shells/bash \
			::lang/python/2.4

# some regression tests must be run as root
do-regress:
	@ln -s ${LOCALBASE}/bin/python2.4 ${WRKDIR}/bin
	@cd ${WRKBUILD}; ${SUDO} ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
