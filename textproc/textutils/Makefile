# $OpenBSD: Makefile,v 1.2 2001/09/24 17:54:50 lebel Exp $

COMMENT=		"GNU text utilities"

DISTNAME=		textutils-2.0
CATEGORIES=		textproc
NEED_VERSION=		1.460

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	textutils

MODULES=		gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"

.include <bsd.port.mk>
