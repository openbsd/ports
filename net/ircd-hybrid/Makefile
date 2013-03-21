# $OpenBSD: Makefile,v 1.24 2013/03/21 08:46:34 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-8.0.6
CATEGORIES =	net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://ircd-hybrid.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto ltdl pcre ssl

LIB_DEPENDS =	devel/libtool,-ltdl \
		devel/pcre

USE_GROFF =	Yes
LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/example.conf

.include <bsd.port.mk>
