# $OpenBSD: Makefile,v 1.26 2014/10/25 22:07:26 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	anti-spam plugin for Dovecot

DISTNAME=	dovecot-antispam-plugin-5ebc6aae4d7c
PKGNAME=	dovecot-antispam-2.2
REVISION=	5
CATEGORIES=	mail

# http://hg.dovecot.org/dovecot-antispam-plugin/
MASTER_SITES=	http://spacehopper.org/mirrors/
HOMEPAGE=	http://wiki2.dovecot.org/Plugins/Antispam

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	lib/dovecot/dovecot lib/dovecot/dovecot-storage

BUILD_DEPENDS=	lang/gawk
LIB_DEPENDS=	mail/dovecot

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
