# $OpenBSD: Makefile,v 1.1.1.1 2006/11/17 00:07:42 alek Exp $

COMMENT=		"compatibility tools from the Tango project"

DISTNAME=		icon-naming-utils-0.8.1
CATEGORIES=		x11

HOMEPAGE=		http://tango-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/
EXTRACT_SUFX=		.tar.gz

RUN_DEPENDS=		:p5-XML-Simple-*:textproc/p5-XML-Simple
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes
PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
