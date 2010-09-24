# $OpenBSD: Makefile,v 1.12 2010/09/24 07:52:37 dcoppa Exp $

COMMENT=		lightweight sip client

VERSION=		1.8
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
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB+=		c crypto gsm.>=1.0 m portaudio
WANTLIB+=		pthread speex speexdsp ssl

LIB_DEPENDS=		::audio/gsm \
			::audio/portaudio-svn \
			::audio/speex

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.62
CONFIGURE_ARGS=		--disable-oss \
			--with-external-gsm \
			--with-external-pa \
			--with-external-speex
CONFIGURE_ENV+=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_lib_uuid_uuid_generate=no

USE_GMAKE=		Yes
NO_REGRESS=		Yes

post-extract:
	rm -f ${WRKSRC}/configure
	ln -s ${WRKSRC}/aconfigure.ac ${WRKSRC}/configure.ac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pjsip-apps/bin/pjsua* ${PREFIX}/bin/pjsua

.include <bsd.port.mk>
