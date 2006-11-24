# $OpenBSD: Makefile,v 1.2 2006/11/24 17:35:32 sturm Exp $

COMMENT=	"GNU standards-compliant Makefile generator"

VERSION=	1.8
DISTNAME=	automake-${VERSION}.5
PKGNAME=	${DISTNAME}p0

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

MAINTAINER=	Jacob Meuser <jakemsr@jakemsr.com>

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
FAKE_FLAGS+=		${MAKE_FLAGS}
SUBST_VARS=		SUFFIX

REGRESS_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
			::devel/libtool
REGRESS_FLAGS+=		AUTOCONF_VERSION=${AUTOCONF_VERSION}


post-install:
	cd ${PREFIX}/info && mv automake.info automake${SUFFIX}.info

.include <bsd.port.mk>
