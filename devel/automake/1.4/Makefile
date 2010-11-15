# $OpenBSD: Makefile,v 1.9 2010/11/15 19:45:56 espie Exp $

COMMENT=	GNU Standards-compliant Makefile generator

VERSION=	1.4
DISTNAME=	automake-${VERSION}-p6
PKGNAME=	automake-1.4.6
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu

REGRESS_DEPENDS=devel/gmake

SUFFIX=		-${VERSION}
SUBST_VARS=	SUFFIX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

do-regress:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} MAKE=${GMAKE} ${GMAKE} -f \
	    ${MAKE_FILE} ${ALL_REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
