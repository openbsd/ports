# $OpenBSD: Makefile,v 1.8 2010/07/22 12:13:17 ajacoutot Exp $

COMMENT=	GNU standards-compliant Makefile generator

VERSION=	1.8
DISTNAME=	automake-${VERSION}.5
REVISION=	2

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

# GPLv2
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
REGRESS_FLAGS=		AUTOCONF_VERSION=${AUTOCONF_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/automake.texi

post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
