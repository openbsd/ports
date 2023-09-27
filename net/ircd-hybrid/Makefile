COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-8.2.43
CATEGORIES =	net
SITES =		${SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =	.tgz
REVISION =	0

HOMEPAGE =	http://ircd-hybrid.com/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto ltdl ssl

LIB_DEPENDS =	devel/libtool,-ltdl

CONFDIR =	${SYSCONFDIR}/ircd-hybrid
LOGDIR =	${LOCALSTATEDIR}/log/ircd-hybrid

SUBST_VARS +=	CONFDIR LOGDIR

LIBTOOL_FLAGS =	--tag=disable-static
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --with-tls=openssl
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/reference.conf

.include <bsd.port.mk>
