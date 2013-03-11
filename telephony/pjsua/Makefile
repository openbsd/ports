# $OpenBSD: Makefile,v 1.30 2013/03/11 11:41:33 espie Exp $

COMMENT=		lightweight sip client

VERSION=		2.0.1
DISTNAME=		pjproject-${VERSION}
PKGNAME=		pjsua-${VERSION}
REVISION=		0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		telephony

HOMEPAGE=		http://www.pjsip.org/
MASTER_SITES=		${HOMEPAGE}release/${VERSION}/
MAINTAINER=		Christopher Zimmermann <madroach@zakweb.de>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB =		c crypto gsm>=1.0 m opencore-amrnb portaudio \
			pthread speex speexdsp ssl

LIB_DEPENDS=		audio/gsm \
			audio/opencore-amr \
			audio/portaudio-svn \
			audio/speex

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--disable-oss \
			--disable-video \
			--with-external-gsm \
			--with-external-pa \
			--with-external-speex
CONFIGURE_ENV+=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_uuid_uuid_h=no \
			ac_cv_lib_uuid_uuid_generate=no

USE_GMAKE=		Yes
NO_TEST=		Yes

post-patch:
	rm -f ${WRKSRC}/configure
	ln -s ${WRKSRC}/aconfigure.ac ${WRKSRC}/configure.ac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pjsip-apps/bin/pjsua* ${PREFIX}/bin/pjsua

.include <bsd.port.mk>
