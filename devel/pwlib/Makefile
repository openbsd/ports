# $OpenBSD: Makefile,v 1.2 2007/04/27 13:38:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"portable Windows library"

DISTNAME=	pwlib-v1_10_3
PKGNAME=	pwlib-1.10.3p0
CATEGORIES=	devel

EXTRACT_SUFX=	-src-tar.gz

SHARED_LIBS=	pt	1.10	# 1.10.3

HOMEPAGE=	http://www.voxgratia.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

WANTLIB=	crypto expat ossaudio ssl

BUILD_DEPENDS=	::devel/bison

WRKDIST=	${WRKDIR}/${DISTNAME:S/-/_/}
NO_REGRESS=	Yes

USE_GMAKE=	Yes
ALL_TARGET=	optshared
MAKE_ENV+=	STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include" \
		CC=${CC} CPLUS=${CXX}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-plugins \
		--enable-oss \
		--enable-bsdvideo \
		--disable-alsa \
		--disable-avc \
		--disable-dc

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-fPIC
.endif

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=		"Compiles on powerpc but it does not work"
.endif

FLAVORS=	ldap sasl sdl
FLAVOR?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	lber.>=9,ldap.>=9,ldap_r.>=9::databases/openldap
CONFIGURE_ARGS+=--enable-openldap
.else
CONFIGURE_ARGS+=--disable-openldap
.endif

.if ${FLAVOR:L:Msasl}
LIB_DEPENDS+=   sasl2.>=2::security/cyrus-sasl2
CONFIGURE_ARGS+=--enable-sasl
.else
CONFIGURE_ARGS+=--disable-sasl
.endif

.if ${FLAVOR:L:Msdl}
LIB_DEPENDS+=   SDL.>=7::devel/sdl
CONFIGURE_ARGS+=--enable-sdl
.else
CONFIGURE_ARGS+=--disable-sdl
.endif

do-extract:
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${WRKDIR}

pre-configure:
	@perl -pi -e 's,MAJOR_VERSION.*,MAJOR_VERSION ${LIBpt_VERSION:R},g;' \
		-e 's,MINOR_VERSION.*,MINOR_VERSION ${LIBpt_VERSION:E},g' \
		${WRKSRC}/version.h
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/src/ptlib/common/pluginmgr.cxx \
		${WRKSRC}/make/ptlib-config.in \
		${WRKSRC}/make/unix.mak

.include <bsd.port.mk>
