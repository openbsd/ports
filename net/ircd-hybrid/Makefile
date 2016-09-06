# $OpenBSD: Makefile,v 1.44 2016/09/06 12:39:09 ajacoutot Exp $

COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-8.2.19
CATEGORIES =	net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://ircd-hybrid.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto ltdl ssl

LIB_DEPENDS =	devel/libtool,-ltdl

CONFDIR =	${SYSCONFDIR}/ircd-hybrid
LOGDIR =	${LOCALSTATEDIR}/log/ircd-hybrid

SUBST_VARS +=	CONFDIR LOGDIR

LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-gnutls \
		 --disable-libgeoip
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/reference.conf

.include <bsd.port.mk>
