# $OpenBSD: Makefile,v 1.24 2013/12/22 22:23:56 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	anti-spam plugin for Dovecot

V_DOVECOT_FULL=	2.2.10

DISTNAME=	dovecot-antispam-plugin-5ebc6aae4d7c
PKGNAME=	dovecot-antispam-2.2
REVISION=	3
CATEGORIES=	mail

# http://hg.dovecot.org/dovecot-antispam-plugin/
MASTER_SITES=	http://spacehopper.org/mirrors/
HOMEPAGE=	http://wiki2.dovecot.org/Plugins/Antispam

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	lib/dovecot/dovecot lib/dovecot/dovecot-storage

BUILD_DEPENDS=	lang/gawk
LIB_DEPENDS=	mail/dovecot=${V_DOVECOT_FULL}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
