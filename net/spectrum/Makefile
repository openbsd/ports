# $OpenBSD: Makefile,v 1.33 2019/05/20 22:15:20 naddy Exp $

COMMENT =	XMPP transport/gateway

DISTNAME =	spectrum-1.4.8
CATEGORIES =	net
REVISION =	9

HOMEPAGE =	http://spectrum.im/
MASTER_SITES =	https://github.com/downloads/hanzz/libtransport/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread ${COMPILER_LIBCXX} gloox purple glib-2.0 gthread-2.0 ev
WANTLIB += PocoData PocoFoundation PocoDataMySQL PocoDataODBC PocoDataSQLite
WANTLIB += Magick++-6.Q16

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake lang/python

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/libev \
		graphics/ImageMagick \
		net/gloox \
		net/pidgin,-libpurple \
		net/poco
RUN_DEPENDS =	net/py-xmpppy

SPVARDIR =	/var/spectrum

CONFIGURE_ENV += LDFLAGS=-pthread
NO_TEST =	Yes
SUBST_VARS =	SPVARDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spectrumctl/spectrumctl.py \
		${WRKSRC}/spectrumctl/spectrum/env.py ${WRKSRC}/spectrum.cfg \
		${WRKSRC}/spectrumctl/spectrum/spectrum.py

post-install:
	${INSTALL_DATA} ${WRKDIST}/schemas/mysql_schema.sql \
		${PREFIX}/share/examples/spectrum
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum/env.py.*
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum/spectrum.py.orig
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum/spectrum.py.beforesubst
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum
	chmod a+r ${PREFIX}/share/examples/spectrum/spectrum.cfg.example

.include <bsd.port.mk>
