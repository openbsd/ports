# $OpenBSD: Makefile,v 1.2 2007/10/27 17:54:53 deanna Exp $

COMMENT=		lightweight sip client

DISTNAME=		pjproject-0.7.0
PKGNAME=		pjsua-0.7.0p0
CATEGORIES=		telephony

HOMEPAGE=		http://www.pjsip.org
MASTER_SITES=		http://www.pjsip.org/release/0.7.0/
MAINTAINER=		Deanna Phillips <deanna@openbsd.org>

WANTLIB=		c crypto m ossaudio pthread ssl
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

post-configure:
		perl -pi -e's,%%LOCALBASE%%,${LOCALBASE},' \
		${WRKSRC}/build/os-openbsd.mak
		cd ${WRKSRC} && ${GMAKE} dep

CFLAGS+=-DNDEBUG
NO_REGRESS=Yes

do-install:
	cp ${WRKSRC}/pjsip-apps/bin/pjsua* ${PREFIX}/bin/pjsua

.include <bsd.port.mk>
