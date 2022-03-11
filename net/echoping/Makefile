COMMENT=	test performance of remote TCP/UDP services

VER=		6_0_2
DISTNAME=	echoping-RELEASE_${VER}
PKGNAME=	echoping-${VER:S/_/./g}
REVISION=	1
CATEGORIES=	net

MASTER_SITES=	https://framagit.org/bortzmeyer/echoping/-/archive/RELEASE_${VER}/

HOMEPAGE=	https://github.com/bortzmeyer/echoping

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto iconv intl m popt ssl

NO_TEST=		Yes

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		${WRKSRC}/recreate-autofiles
BUILD_DEPENDS=		devel/libtool
LIB_DEPENDS=		devel/popt
LIBTOOL_FLAGS=		--tag=disable-static

# other plugins: postgresql, ldap
CONFIGURE_ARGS+=	--enable-plugin="dns random whois" \
			--with-popt=${LOCALBASE} \
			--with-ssl=/usr \
			--enable-http \
			--enable-icp \
			--enable-smtp \
			--enable-tos \
			--without-libidn

# Requires libm: uses sqrt(3), inlined by the compiler on some archs
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -lm"

WRKDIST=		${WRKDIR}/${DISTNAME}/SRC

post-extract:
	ln -s ${LOCALBASE}/share/libtool/config/ltmain.sh ${WRKSRC}/

.include <bsd.port.mk>
