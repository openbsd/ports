# $OpenBSD: Makefile,v 1.15 2013/02/01 07:59:29 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	anti-spam plugin for Dovecot

V_DOVECOT_FULL= 2.1.14

DISTNAME=	dovecot-antispam-plugin-5e8351bcfb29
PKGNAME=	dovecot-antispam-2.1
REVISION=	8
CATEGORIES=	mail

# http://hg.dovecot.org/dovecot-antispam-plugin/
MASTER_SITES=	http://spacehopper.org/mirrors/
HOMEPAGE=	http://wiki2.dovecot.org/Plugins/Antispam

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
