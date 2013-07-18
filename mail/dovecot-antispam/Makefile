# $OpenBSD: Makefile,v 1.19 2013/07/18 20:19:04 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	anti-spam plugin for Dovecot

V_DOVECOT_FULL= 2.1.17

DISTNAME=	dovecot-antispam-plugin-5e8351bcfb29
PKGNAME=	dovecot-antispam-2.1
REVISION=	11
CATEGORIES=	mail

# http://hg.dovecot.org/dovecot-antispam-plugin/
MASTER_SITES=	http://spacehopper.org/mirrors/
HOMEPAGE=	http://wiki2.dovecot.org/Plugins/Antispam

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	lib/dovecot/dovecot-lda lib/dovecot/dovecot-login \
		lib/dovecot/dovecot-storage lib/dovecot/dovecot crypto ssl

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		lang/gawk
LIB_DEPENDS=    mail/dovecot=${V_DOVECOT_FULL}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

pre-configure:
	@cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    ./autogen.sh

.include <bsd.port.mk>
