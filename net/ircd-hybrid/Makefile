COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-8.2.47
CATEGORIES =	net
SITES =		${SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://ircd-hybrid.com/

# GPLv2
PERMIT_PACKAGE =	Yes

# base-gcc doesn't know -Wno-format-truncation
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =	c crypto jansson ltdl ssl

LIB_DEPENDS =	devel/jansson \
		devel/libtool,-ltdl

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
	@${SUBST_CMD} \
	    ${WRKSRC}/doc/reference.ircd.conf \
	    ${WRKSRC}/doc/reference.modules.conf

.include <bsd.port.mk>
