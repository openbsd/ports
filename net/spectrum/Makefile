# $OpenBSD: Makefile,v 1.20 2015/07/15 14:35:48 ajacoutot Exp $

COMMENT =	XMPP transport/gateway

DISTNAME =	spectrum-1.4.8
CATEGORIES =	net
REVISION =	2

HOMEPAGE =	http://spectrum.im/
MASTER_SITES =	https://github.com/downloads/hanzz/libtransport/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread stdc++ gloox purple glib-2.0 gthread-2.0 ev
WANTLIB += PocoData PocoFoundation PocoDataMySQL PocoDataODBC PocoDataSQLite
WANTLIB += Magick++

MODULES =	lang/python devel/cmake

LIB_DEPENDS =	devel/libev \
		graphics/ImageMagick \
		net/gloox \
		net/pidgin,-libpurple \
		net/poco
RUN_DEPENDS =	net/py-xmpppy

SPVARDIR =	/var/spectrum

CONFIGURE_STYLE = cmake

CONFIGURE_ENV += LDFLAGS=-pthread
USE_GROFF =	Yes
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
