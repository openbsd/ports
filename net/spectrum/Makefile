# $OpenBSD: Makefile,v 1.1.1.1 2010/09/13 16:41:16 sebastia Exp $

COMMENT=        XMPP transport/gateway

DISTNAME=       spectrum-1.4.1
CATEGORIES=     net

HOMEPAGE=       http://spectrum.im/
MASTER_SITES=   ${HOMEPAGE}/attachments/download/19/
MAINTAINER=     Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	lang/python devel/cmake
WANTLIB += c m pthread stdc++ gloox purple glib-2.0 gthread-2.0
WANTLIB += PocoData PocoFoundation PocoMySQL PocoODBC PocoSQLite
LIB_DEPENDS=	::net/py-xmpppy \
		::net/gloox \
		::net/pidgin,-libpurple \
		::net/poco 

SPVARDIR=	/var/spectrum
# not using CONFIGURE_STYLE=cmake from cmake module, rolling own in 
# pre-build. Otherwise make configure will work, but afterwards make 
# will fail with python2.6 unable to find ./setup.py
CONFIGURE_STYLE=none
NO_REGRESS=	Yes
SUBST_VARS=    	SPVARDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spectrumctl/spectrumctl.py \
		${WRKSRC}/spectrumctl/spectrum/env.py ${WRKSRC}/spectrum.cfg

post-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/cmake .

post-install:
	${INSTALL_DATA} ${WRKDIST}/schemas/mysql_schema.sql \
		${PREFIX}/share/examples/spectrum
	rm -f ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum/env.py.*
	rm -f ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum/spectrum.py.orig
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/spectrum

.include <bsd.port.mk>
