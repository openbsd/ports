# $OpenBSD: Makefile,v 1.14 2021/02/01 18:10:44 sthen Exp $

COMMENT=	test performance of a remote TCP service

VER=		6_0_2
DISTNAME=	echoping-RELEASE_${VER}
PKGNAME=	echoping-${VER:S/_/./g}
CATEGORIES=	net

MASTER_SITES=	https://framagit.org/bortzmeyer/echoping/-/archive/RELEASE_${VER}/

HOMEPAGE=	https://github.com/bortzmeyer/echoping

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto iconv intl popt ssl

NO_TEST=		Yes

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		${WRKSRC}/recreate-autofiles
BUILD_DEPENDS=		devel/libtool
LIB_DEPENDS=		devel/popt
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--enable-plugin="dns random whois" \
			--with-popt=${LOCALBASE} \
			--with-ssl=/usr \
			--enable-http \
			--enable-icp \
			--enable-smtp \
			--enable-tos \
			--without-libidn

WRKDIST=		${WRKDIR}/${DISTNAME}/SRC

post-extract:
	ln -s ${LOCALBASE}/share/libtool/config/ltmain.sh ${WRKSRC}/

.include <bsd.port.mk>
