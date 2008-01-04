# $OpenBSD: Makefile,v 1.5 2008/01/04 17:48:34 espie Exp $

COMMENT=	GNU standards-compliant Makefile generator

VERSION=	1.8
DISTNAME=	automake-${VERSION}.5
PKGNAME=	${DISTNAME}p1

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS=		::devel/metaauto
RUN_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}

SUFFIX=			-${VERSION}
CONFIGURE_STYLE=	gnu
MAKE_FLAGS+=		MAKEINFO="makeinfo --no-split" \
			pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}
SUBST_VARS=		SUFFIX

REGRESS_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			::devel/libtool
REGRESS_FLAGS+=		AUTOCONF_VERSION=${AUTOCONF_VERSION}


post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
