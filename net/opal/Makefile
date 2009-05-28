# $OpenBSD: Makefile,v 1.7 2009/05/28 10:00:44 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Open Phone Abstraction Library

DISTNAME=	opal-2.2.11
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	opal	0.0 # .2.2.11
CATEGORIES=	net devel

HOMEPAGE=	http://www.opalvoip.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL 1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/admin/downloads/latest/sources/sources/

WANTLIB=	SDL crypto expat lber ldap ldap_r sasl2 ssl

LIB_DEPENDS=	speex.>=7,speexdsp::audio/speex \
		pt.>=2::devel/pwlib

ALL_TARGET=	optshared
OPAL_FILE=	libopal.so

MAKE_ENV=	CC=${CC} CPLUS=${CXX} BUILDSELF="1"
MAKE_FLAGS=	OPAL_FILE=${OPAL_FILE} \
		LIB_SONAME=${OPAL_FILE}.${LIBopal_VERSION} \
		LIBNAME_PAT=${OPAL_FILE}.${LIBopal_VERSION}

USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-localspeex

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/opal_inc.mak.in

.include <bsd.port.mk>
