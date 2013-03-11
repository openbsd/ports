# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:56 espie Exp $

COMMENT=        XMPP transport/gateway

DISTNAME =	spectrum-1.4.7
REVISION =	3
CATEGORIES=     net

HOMEPAGE=       http://spectrum.im/
MASTER_SITES =	${HOMEPAGE}/attachments/download/37/
MAINTAINER=     Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	lang/python devel/cmake
WANTLIB += c m pthread stdc++ gloox purple glib-2.0 gthread-2.0 event
WANTLIB += PocoData PocoFoundation PocoMySQL PocoODBC PocoSQLite Magick++
LIB_DEPENDS=	net/py-xmpppy \
		net/gloox \
		net/pidgin,-libpurple \
		net/poco \
		graphics/ImageMagick
RUN_DEPENDS =	net/py-xmpppy

SPVARDIR=	/var/spectrum

CONFIGURE_STYLE=cmake
CONFIGURE_ENV += LDFLAGS=-pthread
USE_GROFF =	Yes
NO_TEST=	Yes
SUBST_VARS=    	SPVARDIR

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

.include <bsd.port.mk>
