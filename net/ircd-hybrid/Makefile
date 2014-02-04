# $OpenBSD: Makefile,v 1.30 2014/02/04 09:46:48 brad Exp $

SHARED_ONLY =	Yes

COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-8.1.13
CATEGORIES =	net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =	.tgz

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
