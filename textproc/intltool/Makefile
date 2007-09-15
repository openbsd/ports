# $OpenBSD: Makefile,v 1.9 2007/09/15 20:59:38 merdely Exp $

COMMENT=		internationalization tool

DISTNAME=		intltool-0.35.5
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/intltool/0.35/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

RUN_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu

PKG_ARCH=		*

.include <bsd.port.mk>
