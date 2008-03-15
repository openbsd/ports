# $OpenBSD: Makefile,v 1.6 2008/03/15 17:38:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	portable Windows library

V=		1_12_0
DISTNAME=	ptlib-v${V}
PKGNAME=	pwlib-${V:S/_/./g}
CATEGORIES=	devel

EXTRACT_SUFX=	-src.tar.gz

SHARED_LIBS=	pt	2.0	# 1.12.0

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=h323plus/}

WANTLIB=	crypto expat ossaudio ssl

BUILD_DEPENDS=	::devel/bison

WRKDIST=	${WRKDIR}/${DISTNAME:S/-/_/}
NO_REGRESS=	Yes

USE_GMAKE=	Yes
ALL_TARGET=	optshared
MAKE_ENV+=	STDCCFLAGS="${STDCCFLAGS} -I${X11BASE}/include \
			-I${LOCALBASE}/include" \
		CC=${CC} CPLUS=${CXX}
MAKE_FLAGS=	LIB_MAJOR_VERSION=${LIBpt_VERSION:R} \
		LIB_MINOR_VERSION=${LIBpt_VERSION:E}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-plugins \
		--enable-oss \
		--enable-bsdvideo \
		--disable-sunaudio \
		--disable-alsa \
		--disable-avc \
		--disable-dc \
		--disable-odbc

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-fPIC
.endif

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=		Compiles on powerpc but it does not work
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

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/src/ptlib/common/pluginmgr.cxx \
		${WRKSRC}/make/ptlib-config.in \
		${WRKSRC}/make/unix.mak

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/pwlib

.include <bsd.port.mk>
