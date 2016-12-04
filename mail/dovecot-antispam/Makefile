# $OpenBSD: Makefile,v 1.29 2016/12/04 21:37:30 sthen Exp $

COMMENT=	anti-spam plugin for Dovecot

DISTNAME=	dovecot-antispam-plugin-5ebc6aae4d7c
PKGNAME=	dovecot-antispam-2.2
REVISION=	6
CATEGORIES=	mail

# https://hg.dovecot.org/dovecot-antispam-plugin/
MASTER_SITES=	https://spacehopper.org/mirrors/
HOMEPAGE=	https://wiki2.dovecot.org/Plugins/Antispam

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	lib/dovecot/dovecot lib/dovecot/dovecot-storage

BUILD_DEPENDS=	lang/gawk
LIB_DEPENDS=	mail/dovecot

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
