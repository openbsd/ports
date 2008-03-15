# $OpenBSD: Makefile,v 1.11 2008/03/15 10:09:01 ajacoutot Exp $

COMMENT=		internationalization tool

V=			0.37.1
DISTNAME=		intltool-${V}
CATEGORIES=		textproc

HOMEPAGE=		http://www.gnome.org/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/intltool/${V:R}/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gettext-*:devel/gettext
BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu

PKG_ARCH=		*

.include <bsd.port.mk>
