# $OpenBSD: Makefile,v 1.37 2015/05/28 06:50:17 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-8.2.8
CATEGORIES =	net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =	.tgz
REVISION =	0

HOMEPAGE =	http://ircd-hybrid.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto ltdl ssl

LIB_DEPENDS =	devel/libtool,-ltdl

LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-libgeoip
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/reference.conf

.include <bsd.port.mk>
